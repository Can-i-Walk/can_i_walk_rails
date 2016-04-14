class PasswordResetJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    user_email = args[0]
    token = args[1]
    PasswordMailer.reset_link(user_email, token).deliver_now
  end
end
