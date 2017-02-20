class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :order_request

  validates :evaluation, presence: true, :numericality => { :only_integer => true }
end
