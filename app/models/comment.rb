class Comment < ActiveRecord::Base
  has_many :replies, class_name: "Comment", foreign_key: "parent_id"
  has_many :votes, class_name: "Commentvote"
  belongs_to :parent, class_name: "Comment"
  belongs_to :post
  belongs_to :user
end
