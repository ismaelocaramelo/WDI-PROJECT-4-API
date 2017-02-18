class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price_person, :date
end
