class PasswordMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.password_mailer.reset_link.subject
  #
  def reset_link(email, link)
    @greeting = "Please follow the link to reset your password: #{link}"
    mail to: email, subject: "Password Reset Request"
  end
end
