class Notification < ApplicationRecord
  before_create :set_today

  def set_today
    self.date = Time.now
  end


  belongs_to :type, class_name: "NotificationType"
  belongs_to :receiver, class_name: "User"
  belongs_to :sender, class_name: "User"
end

# belongs_to
# has_one
# has_many
# has_many :through
# has_one :through
# has_and_belongs_to_many
