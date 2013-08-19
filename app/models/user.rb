class User < ActiveRecord::Base
  attr_accessible :email, :password
  validates_uniqueness_of :email
  validates :email, :presence => true
  validates :password, :presence => true
end
