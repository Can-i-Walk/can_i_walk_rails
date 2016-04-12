class AuthenticationController < ApplicationController
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
        @current_user.generate_token
        @current_user.save!
        render json: @current_user
      end
    else
      render :json => {:success => false, :errors => ["Login failed."]}
    end
  end

  def logout
    @current_user = User.find(params[:user_id])
    @current_user.token = nil
    @current_user.save!
    if @current_user.token == nil
      render :json => {:success => true}
    else
      render :json => {:success => false, :errors => ["Logout failed."]}
    end
  end
end
