class PasswordMailer < ApplicationMailer
  def reset_link(email, token)
    @token = token
    mail to: email, subject: "Password Reset Request"
  end
end
