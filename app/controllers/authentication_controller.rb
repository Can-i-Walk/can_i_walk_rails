class AuthenticationController < ApplicationController
  def oauth
  end

  def password_reset
    nil_user = "No email found."
    forgetful_user = User.find_by(email: params[:email])
    if forgetful_user
      PasswordResetJob.perform_later(forgetful_user.email, forgetful_user.id)
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

  def login
  @current_user = User.find_by_email(params[:email])
    if @current_user && @current_user.authenticate(params[:password])
      if @current_user.email_confirmed
        @current_user.generate_token
        @current_user.save!
        render json: @current_user
      end
    else
      render json: "Wrong email and password combination. Please try again."
    end
  end

  def logout
    @current_user = User.find_by_email(params[:email])
    @current_user.token = nil
    @current_user.save!
    render json: "Logout Successful"
  end
end
