class Group < ApplicationRecord
  before_destroy { users.clear }

  has_and_belongs_to_many :users
  belongs_to :admin, class_name:"User", foreign_key: :admin_id

  validates :name, presence: true, uniqueness: true
end
