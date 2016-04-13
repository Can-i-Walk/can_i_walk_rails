class AuthenticationController < ApplicationController
  before_action :authenticate, only: [:logout]

  def oauth
  end

  def password_reset
    nil_user = "No email found."
    forgetful_user = User.find_by(email: params[:email])
    if forgetful_user
      PasswordResetJob.perform_later(forgetful_user.email, forgetful_user.id)
      render json: forgetful_user
    else
      render :json => {:success => false, :errors => ["No user found with that email."]}
    end
  end

  def password_update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Password update failed."]}
    end
  end

  def confirmation
    user = User.find_by_confirm_token(params[:confirm_token])
    if user
      user.email_activate
      redirect_to "https://intense-inferno-3546.firebaseapp.com/#/login"
    else
      render :json => {:success => false, :errors => ["Confirmation failed."]}
    end
  end

  def decline
    user = User.find_by_confirm_token(params[:confirm_token])
    if user
      user.destroy!
    else
      render :json => {:success => false, :errors => ["Decline failed."]}
    end
  end

  def login
    @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      if @current_user.email_confirmed
        @active_token = @current_user.generate_token
        @current_user.save!
      else
        confirm_token = @current_user.confirm_token
        RegistrationConfirmationJob.perform_later(@current_user.email, confirm_token)
        render :json => {:success => false, :errors => ["Please confirm your email to login."]}
      end
    else
      render :json => {:success => false, :errors => ["Login failed."]}
    end
  end

  def logout
    @active_token = SessionToken.find_by(token: params[:token])
    if @active_token
      @active_token.destroy!
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Logout failed."]}
      # Or say, "Already logged out."
    end
  end
end
