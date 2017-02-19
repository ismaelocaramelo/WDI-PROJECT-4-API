class Publication < ApplicationRecord
  belongs_to :meal, class_name: "Meal"
  belongs_to :user, class_name: "User"
  has_many :order_requests, class_name: "OrderRequest", foreign_key: :publication_id
  has_many :ratings, through: :order_requests

  validates :meetingPoint, presence: true
end
