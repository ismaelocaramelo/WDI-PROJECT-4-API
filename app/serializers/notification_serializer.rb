class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :notification_type,  :sender, :receiver
end
