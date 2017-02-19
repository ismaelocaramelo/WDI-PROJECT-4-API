class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :groups
  has_many :notifications, class_name: "Notification", foreign_key: :receiver_id
  has_many :own_notications, class_name: "Notification", foreign_key: :sender_id
  has_many :own_groups, class_name: "Group", foreign_key: :admin_id
  has_many :ratings, class_name: "Rating", foreign_key: :user_id
  has_many :order_requests, class_name: "OrderRequest", foreign_key: :user_id
  has_many :publications, class_name: "Publication", foreign_key: :user_id
  has_many :meals, class_name: "Meal", foreign_key: :user_id

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
