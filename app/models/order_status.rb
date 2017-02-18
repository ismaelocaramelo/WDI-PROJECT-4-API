class OrderStatus < ApplicationRecord
  has_many :orderrequests

  validates :title, presence: true, uniqueness: true

  validates :title, :format => { :with => /(pending)|(cancel)|(rejected)|(accepted)/, :message => "Wrong status only pending, cancel, rejected or accepted" }
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
