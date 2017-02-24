class UserSerializer < ActiveModel::Serializer
  attributes :id, :own_groups, :first_name, :last_name, :email, :photo, :notifications
  has_many :meals
  has_many :order_requests
end
