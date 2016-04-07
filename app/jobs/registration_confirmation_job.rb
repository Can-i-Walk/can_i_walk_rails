class RegistrationConfirmationJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    email = args[0]
    user_id = args[1]
    ConfirmationMailer.confirm_registration(email, user_id).deliver_now
  end
end
