class User < ApplicationRecord
  has_secure_password


  has_and_belongs_to_many :groups
  has_many :notifications
  has_many :ratings
  has_many :orderrequests
  has_many :publications
  has_many :meals
  has_many :groups

  validates :email, presence: true, uniqueness: true
  #Needs validates!!
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
