class RatingSerializer < ActiveModel::Serializer
  attributes :id, :evaluation, :user
end
