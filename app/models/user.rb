class User < ActiveRecord::Base

  has_secure_password
  has_many :tasks

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password

end
