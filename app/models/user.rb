class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :expenses
  has_and_belongs_to_many :groups

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
