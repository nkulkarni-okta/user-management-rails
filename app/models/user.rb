require 'bcrypt'
class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection, BCrypt
  attr_accessor :password, :salt
  attr_accessible :first_name, :last_name, :manager, :mobile_phone, :postal_address, :status, :username, :salt
  attr_protected :hashed_password

before_save :encrypt_pass
after_save :clear_pass

def encrypt_pass
  if password.present?
    self.salt = BCrypt::Engine.generate_salt
    self.hashed_password= BCrypt::Engine.hash_secret(password, self.salt)
  end
end

def clear_pass
  self.password = nil
end

end
