class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :groups
  has_many :notifications, class_name: "Notification", foreign_key: :receiver_id
  has_many :own_notications, class_name: "Notification", foreign_key: :sender_id
  has_many :own_groups, class_name: "Group", foreign_key: :admin_id
  has_many :ratings
  has_many :order_requests
  has_many :meals

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end
