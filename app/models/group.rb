class Group < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :admin_id, class_name:"User", foreign_key: :admin_id

  validates :name, presence: true, uniqueness: true
  vadidates :protected, acceptance: false
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
