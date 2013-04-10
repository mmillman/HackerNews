class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :post_id

  belongs_to :post

  validates :author_id, :presence => true
  validates :body, :length => { maximum: 10000 }

  has_many :descendent_relations, :class_name => 'CommentAncestry',
           :foreign_key => :ancestor_id

  has_many :ancestor_relations, :class_name => 'CommentAncestry',
           :foreign_key => :descendent_id

  has_many :ancestors, :through => :ancestor_relations
  has_many :descendents, :through => :descendent_relations
end
