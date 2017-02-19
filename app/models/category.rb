class Category < ApplicationRecord
  belongs_to :parent_category, class_name: "Category", inverse_of: :childrens, required: false, polymorphic: true
  has_many :childrens, class_name: "Category", foreign_key: :parent_category_id
end


#
# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many

#has_many :albums_as_owner, class_name: "Album", foreign_key: :owner_id
#belongs_to :owner, class_name: "Artist", foreign_key: :owner_id
