class Meal < ApplicationRecord
  before_destroy { tags.clear }

  has_and_belongs_to_many :tags, required: false
  belongs_to :category
  belongs_to :user
  has_many :order_requests, class_name: "OrderRequest", foreign_key: :meal_id, dependent: :destroy
  has_many :ratings, through: :order_requests

  validates :name, presence: true
  validates :price_person, presence: true, numericality: true

  before_create :set_today

  private

    def set_today
      self.date = Time.now
    end
end
