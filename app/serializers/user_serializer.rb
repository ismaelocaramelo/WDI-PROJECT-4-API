class UserSerializer < ActiveModel::Serializer
  attributes :id, :own_groups, :first_name, :last_name, :email, :photo, :notifications
end
