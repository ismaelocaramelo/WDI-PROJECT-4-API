class Rating < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :order_request, class_name: "OrderRequest"

  validates :evaluation, presence: true, :numericality => { :only_integer => true }
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
