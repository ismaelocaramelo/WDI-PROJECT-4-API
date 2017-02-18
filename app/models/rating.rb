class Rating < ApplicationRecord
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
  belongs_to :meal_id, class_name: "Meal", foreign_key: :meal_id

  validates :evaluation, presence: true, :numericality => { :only_integer => true }
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
