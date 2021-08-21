class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, uniqueness: true
  has_many :articles
end
