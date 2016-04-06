# Preview all emails at http://localhost:3000/rails/mailers/confirmation_mailer
class ConfirmationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/confirmation_mailer/confirm_registration
  def confirm_registration
    ConfirmationMailer.confirm_registration
  end

end
