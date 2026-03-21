class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates :password, length: { in: 6..20 }, allow_nil: true
end
