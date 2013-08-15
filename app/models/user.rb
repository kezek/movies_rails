class User < ActiveRecord::Base
  attr_accessible :email, :password
  #validates_uniqueness_of :email
end
