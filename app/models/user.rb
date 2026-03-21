class User < ApplicationRecord
  has_secure_password

  validate :name, presence: true
  validate :email, presence: true
  validate :password, length: { in: 6..20 }, allow_nil: true
end
