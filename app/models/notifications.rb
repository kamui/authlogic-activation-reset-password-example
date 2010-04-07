class Notifications < ActionMailer::Base
  default_url_options[:host] = "localhost"

  def activation(user)
    subject       "Activation Instructions"
    from          "test@test.com"
    recipients    user.email
    sent_on       Time.now
    body          :account_activation_url => activate_url(user.perishable_token)
  end

  def welcome(user)
    subject       "Welcome to OliaDesigns.com!"
    from          "test@test.com"
    recipients    user.email
    sent_on       Time.now
    body          :root_url => root_url
  end

  def password_reset(user)
    subject       "Password Reset Instructions"
    from          "test@test.com"
    recipients    user.email
    sent_on       Time.now
    body          :edit_password_reset_url => edit_password_reset_url(user.perishable_token)
  end
end
