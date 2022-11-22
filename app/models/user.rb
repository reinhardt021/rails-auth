class User < ApplicationRecord
  has_secure_password

  # TODO: add uniqueness check
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, confirmation: true, on: :create
end
