require 'bcrypt'
class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection, BCrypt
  attr_accessor :password, :salt
  attr_accessible :firstName, :lastName, :manager, :mobilePhone, :postalAddress, :status, :username, :salt, :field1, :field2, :field3, :field4, :field5, :field6, :field7, :field8, :field9, :field10, :field11, :field12, :field13, :field14, :field15,
    :field16, :field17, :field18, :field19, :field20, :field21, :field22, :field23, :field24
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
