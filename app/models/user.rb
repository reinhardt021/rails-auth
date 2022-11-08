class User < ApplicationRecord
  attr_accessor :email, :password, :password_confirmation

  has_secure_password
  validates :email, presence: true
  #validates :password, presence: true, confirmation: true, on: :create
end
