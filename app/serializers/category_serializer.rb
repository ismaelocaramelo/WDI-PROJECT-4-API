class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :parent_category_id
end
