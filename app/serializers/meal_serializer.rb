class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price_person, :date, :user, :category, :tags, :order_requests, :ratings
end
