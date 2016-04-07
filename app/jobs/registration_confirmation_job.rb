class RegistrationConfirmationJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    email = args[0]
    confirm_token = args[1]
    ConfirmationMailer.confirm_registration(email, confirm_token).deliver_now
  end
end
