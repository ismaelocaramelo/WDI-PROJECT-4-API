class Meal < ApplicationRecord
  before_create :set_today

  def set_today
    self.date = Time.now
  end

  has_and_belongs_to_many :tags, required: false
  belongs_to :category, class_name: "Category"
  belongs_to :user, class_name: "User"
  has_many :order_requests, class_name: "OrderRequest", foreign_key: :meal_id
  has_many :publications, class_name: "Publication", foreign_key: :meal_id
  has_many :ratings, through: :order_requests

  validates :name, presence: true
  validates :price_person, presence: true, numericality: true
end
# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
