class Category < ApplicationRecord
  belongs_to :parent_category, class_name: "Category", inverse_of: :childrens, required: false, polymorphic: true
  has_many :childrens, class_name: "Category", foreign_key: :parent_category_id
end
