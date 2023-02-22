class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_body, :post_id, :user_id, :likes
end
