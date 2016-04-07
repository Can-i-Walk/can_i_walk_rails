class ConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.confirm_registration.subject
  #
  def confirm_registration(email, confirm_token)
    @greeting = "Hieeeee. Thank you for registering with CAN<i>Walk, your one-stop traveler app."
    @confirm_token = confirm_token

    mail to: email, subject: "Registration Confirmation"
  end
end
