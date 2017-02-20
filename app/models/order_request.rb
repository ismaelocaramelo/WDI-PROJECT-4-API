class OrderRequest < ApplicationRecord
  STATUSES = ["pending", "accepted", "rejected"]

  belongs_to :user
  belongs_to :meal, required: false
  has_one :rating, required: false, dependent: :destroy

  validates :quantity, presence: true, numericality: true
  validate :check_status

  before_validation :set_default_status, on: :create

  private

    def set_default_status
      self.status = "pending" if self.status.nil?
    end

    def check_status
      unless STATUSES.include? self.status
        errors.add(:status, "Status is not in the correct format.")
      end
    end
end
