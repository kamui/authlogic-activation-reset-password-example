require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "activation" do
    @expected.subject = 'Notifications#activation'
    @expected.body    = read_fixture('activation')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifications.create_activation(@expected.date).encoded
  end

  test "welcome" do
    @expected.subject = 'Notifications#welcome'
    @expected.body    = read_fixture('welcome')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifications.create_welcome(@expected.date).encoded
  end

  test "password_reset" do
    @expected.subject = 'Notifications#password_reset'
    @expected.body    = read_fixture('password_reset')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifications.create_password_reset(@expected.date).encoded
  end

end
