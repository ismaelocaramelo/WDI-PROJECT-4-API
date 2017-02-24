class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price_person, :date, :user, :category, :tags, :ratings
  has_many :order_requests
end
