class PasswordResetJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    # Do something later
    PasswordMailer.reset_link(forgetful_user.email, link).deliver_now
  end
end
