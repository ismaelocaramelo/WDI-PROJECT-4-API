class Publication < ApplicationRecord
  belongs_to :meal_id, class_name: "Meal", foreign_key: :meal_id
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
  has_many :orderrequests

  validates :meetingPoint, presence: true
end
