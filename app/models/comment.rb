class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :post_id

  belongs_to :post

  validates :author_id, :presence => true
  validates :body, :length => { maximum: 10000 }
end
