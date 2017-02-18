class Notification < ApplicationRecord
  has_one :type_id, class_name: "NotificationType", foreign_key: :type_id
  belongs_to :user_id, class_name: "User", foreign_key: :user_id
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
