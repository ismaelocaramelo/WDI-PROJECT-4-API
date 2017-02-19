class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :type,  :sender, :receiver
end
