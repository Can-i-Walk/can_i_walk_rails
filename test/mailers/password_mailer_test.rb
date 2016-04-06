require 'test_helper'

class PasswordMailerTest < ActionMailer::TestCase
  test "reset_link" do
    mail = PasswordMailer.reset_link
    assert_equal "Reset link", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
