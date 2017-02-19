class OrderRequest < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :status, class_name: "OrderStatus"
  belongs_to :meal, class_name: "Meal", required: false
  belongs_to :publication, class_name: "Publication", required: false
  has_one :rating, class_name: "Rating", required: false

  validates :quantity, presence: true, numericality: true
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
