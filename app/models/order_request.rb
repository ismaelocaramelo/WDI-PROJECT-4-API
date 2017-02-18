class OrderRequest < ApplicationRecord
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
  has_one :status_id, class_name: "OrderStatus", foreign_key: :status_id
  has_one :meal_id, class_name: "Meal", foreign_key: :meal_id
  has_one :publication_id, class_name: "Publication", foreign_key: :publication_id

  validates :email, presence: true, uniqueness: true
  validates :quantity, presence: true, numericality: true
  vadidates :payment, acceptance: false
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
