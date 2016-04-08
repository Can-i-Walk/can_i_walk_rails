class AuthenticationController < ApplicationController
  def oauth
  end

  def password_reset
    nil_user = "No email found."
    forgetful_user = User.find_by(email: params[:email])
    if forgetful_user
      link = params[:link]
      PasswordResetJob.perform_later(forgetful_user.email, link)
      render json: forgetful_user
      # Redirect user to a CAN<i>WALK page logo with request for them to look at their email.
    else
      render json: nil_user
      # Redirect user to some page where you inform them that the email was not found. Maybe just raise an alert.
    end
  end

  def confirmation
    user = User.find_by_confirm_token(params[:confirm_token])
    if user
      user.email_activate
      # flash[:success] = "Welcome to the Sample App! Your email has been confirmed. Please sign in to continue."
      redirect_to "https://intense-inferno-3546.firebaseapp.com/#/login"
    else
      # flash[:error] = "Sorry. User does not exist"
      # redirect_to root_url
    end
  end

  def decline
    user = User.find_by_confirm_token(params[:confirm_token])
    if user
      user.destroy!
      # flash[:success] = "Your email has been successfuly removed from our records."
      # redirect_to root_url
    else
      # flash[:error] = "Sorry. User does not exist"
      render json: user
    end
  end

  def authenticate
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password])
      if user.email_confirmed
        @user = user
        # render json: @token
      else
        # flash.now[:error] = 'Please activate your account by following the
        # instructions in the account confirmation email you received to proceed'
        # render 'new'
      end
    else
      # flash.now[:error] = 'Invalid email/password combination' # Not quite right!
      # render 'new'
    end
  end
end
