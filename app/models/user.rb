class User < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :groups
  has_many :notifications, class_name: "Notification", foreign_key: :user_id
  has_many :ratings
  has_many :orderrequests
  has_many :publications
  has_many :meals
  has_many :groups, :class_name => "Group", :foreign_key => "admin_id"

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
