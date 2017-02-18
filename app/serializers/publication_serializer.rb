class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :date, :setDate, :deadline, :meetingPoint
end
