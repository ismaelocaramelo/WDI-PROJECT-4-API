class Meal < ApplicationRecord
  belongs_to :category_id, class_name: "Category", foreign_key: :category_id
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
  has_many :ratings
  has_many :orderrequests
  has_and_belongs_to_many :tags
  has_many :publications
end
# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
