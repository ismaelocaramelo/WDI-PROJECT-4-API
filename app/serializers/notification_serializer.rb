class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :user_id, :type_id
end
