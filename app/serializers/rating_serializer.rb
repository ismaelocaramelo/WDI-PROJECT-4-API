class RatingSerializer < ActiveModel::Serializer
  attributes :id, :evaluation, :user, :meal, :order_request
end
