class Tag < ApplicationRecord
  has_and_belongs_to_many :meals

  validates :title, presence: true, uniqueness: true, :format => { :with => /\#[a-zA-Z]{3,}/, :message => "Only letters allowed" }
end
