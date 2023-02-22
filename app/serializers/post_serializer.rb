class PostSerializer < ActiveModel::Serializer
  attributes :id, :post_body, :user_id, :likes, :sports_id
end
