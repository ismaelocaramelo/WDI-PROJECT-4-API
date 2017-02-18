class NotificationType < ApplicationRecord
  has_many :notifications, class_name: "Notification", foreign_key: :type_id
end
# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
