class Group < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :admin, class_name:"User"

  validates :name, presence: true, uniqueness: true
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
