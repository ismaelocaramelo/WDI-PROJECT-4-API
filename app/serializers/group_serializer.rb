class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon, :admin, :protected, :users
end
