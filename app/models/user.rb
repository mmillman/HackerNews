class User < ActiveRecord::Base
  attr_accessible :email, :karma, :password_digest, :username
end
