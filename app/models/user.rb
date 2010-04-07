class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
  attr_accessible :email, :password, :password_confirmation
 
  def activate!
    self.active = true
    save
  end

  def deliver_password_reset!
    reset_perishable_token!
    Notifications.deliver_password_reset(self)
  end

  def deliver_activation!
    reset_perishable_token!
    Notifications.deliver_activation(self)
  end

  def deliver_welcome!
    reset_perishable_token!
    Notifications.deliver_welcome(self)
  end
end
