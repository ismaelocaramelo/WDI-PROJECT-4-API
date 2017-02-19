class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :parent_category_id, :childrens, :childrens
end
