class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :title, :url, :comments_attributes

  belongs_to :author, :class_name => "User"
  has_many :comments

  accepts_nested_attributes_for :comments
end
