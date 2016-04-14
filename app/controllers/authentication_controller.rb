class AuthenticationController < ApplicationController
  before_action :authenticate, only: [:logout]

  def password_reset
    current_user = User.find_by(email: params[:email])
    if current_user
      token = current_user.generate_token.token
      PasswordResetJob.perform_later(current_user.email, token)
      render :json => current_user
      # render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["No user found with that email."]}
    end
  end

  def password_update
    @user = User.joins(:session_tokens).find_by("session_tokens.token = params[:token]")
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
