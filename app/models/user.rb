class User < ActiveRecord::Base
  has_many :orders
  validates :name, presence: true, uniqueness: true
  has_secure_password
end
