class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {message: "Email should be unique"}
  validates :password, presence: true, confirmation: {case_sensitive: true}, length: { minimum: 10 }
  validates :password_confirmation, presence: true
end
