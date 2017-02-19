class OrderStatus < ApplicationRecord
  has_many :order_requests, class_name: "OrderRequest", foreign_key: :status_id

  validates :title, presence: true, uniqueness: true

  
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
