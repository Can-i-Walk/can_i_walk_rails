class ConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.confirm_registration.subject
  #
  def confirm_registration(email, link)
    @greeting = "Hieeeee"

    mail to: email, subject: "Registration Confirmation"
  end
end
