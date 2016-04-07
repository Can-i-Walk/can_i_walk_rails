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
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def authenticate
  end
end
