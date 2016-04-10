class PasswordResetJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    forgetful_user_email = args[0]
    user_id = args[1]
    PasswordMailer.reset_link(forgetful_user_email, user_id).deliver_now
  end
end
