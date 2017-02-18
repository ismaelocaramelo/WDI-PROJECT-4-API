class Notification < ApplicationRecord
  before_create :set_today

  def set_today
    self.date = Time.now
  end

  has_one :type, class_name: "NotificationType"
  belongs_to :user, class_name: "User"
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
