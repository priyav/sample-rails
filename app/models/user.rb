class User < ActiveRecord::Base
  validates :username,  :presence => true,
                        :uniqueness => true
  validates :password,  :presence => true,
                        :length => { :minimum => 8 }
  validates :email, :format => { :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid Email" }
  
end