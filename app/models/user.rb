class User < ActiveRecord::Base
  attr_accessible :email, :karma, :password, :username, :remember_token

  validates :email, :password, :username, presence: true
  has_many :posts, :foreign_key => :author_id
end
