class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :icon, :admin_id, :protected, :user_id, :type_id
end
