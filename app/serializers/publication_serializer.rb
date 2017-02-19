class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :date, :setDate, :deadline, :meetingPoint, :user, :meal, :order_requests, :ratings
end
