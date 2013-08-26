class User < ActiveRecord::Base
  attr_accessor :password_digest

  has_many :posts
  has_many :comments


  validates :name, presence: true
  validates :email, uniqueness: true, presence: true, format: {with: /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/}
  validates :password_digest, presence: true

  has_secure_password

end
