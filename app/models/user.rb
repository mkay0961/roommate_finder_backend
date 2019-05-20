class User < ApplicationRecord
  has_many :users, through: :roommates
  has_many :roommates
  has_many :user_attributes
  has_many :recomandations
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }


end
