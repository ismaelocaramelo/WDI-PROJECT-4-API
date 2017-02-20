class Notification < ApplicationRecord
  NOTIFICATION_TYPES = %w(group order payment reminder)

  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"

  validates :receiver_id, presence: true
  validates :sender_id, presence: true
  validate :check_notification_types

  before_create :set_today

  private

    def set_today
      self.date = Time.now
    end

    def check_notification_types
      unless NOTIFICATION_TYPES.include? self.notification_type
        errors.add(:notification_type, "Type is not in the correct format.")
      end
    end
end
