class PasswordResetJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    forgetful_user_email = args[0]
    reset_link = args[1]
    PasswordMailer.reset_link(forgetful_user_email, reset_link).deliver_now
  end
end
