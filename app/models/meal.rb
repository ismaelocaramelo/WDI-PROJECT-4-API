class Meal < ApplicationRecord
  has_and_belongs_to_many :tags
  belongs_to :category_id, class_name: "Category", foreign_key: :category_id
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
  has_many :ratings
  has_many :orderrequests
  has_many :publications

  validates :name, presence: true, uniqueness: true
  validates :price_person, presence: true, numericality: true
end
# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
