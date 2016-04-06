class AuthenticationController < ApplicationController
  def oauth
  end

  def password_reset
    nil_user = "No email found."
    forgetful_user = User.find_by(email: params[:email])
    if forgetful_user
      link = params[:link]
      PasswordMailer.reset_link(forgetful_user.email, link).deliver_now
      render json: forgetful_user
    else
      render json: nil_user
    end
  end

  def confirmation
  end

  def authenticate
  end
end
