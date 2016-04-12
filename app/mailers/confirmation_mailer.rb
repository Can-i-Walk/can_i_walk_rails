class ConfirmationMailer < ApplicationMailer
  def confirm_registration(email, confirm_token)
    @confirm_token = confirm_token

    mail to: email, subject: "Registration Confirmation"
  end
end
