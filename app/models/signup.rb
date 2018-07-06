class Signup < ApplicationRecord
  has_secure_password

  def vip?
    self.role == 'vip'
  end
  
end
