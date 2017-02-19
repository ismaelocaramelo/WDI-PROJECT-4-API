class Tag < ApplicationRecord
  has_and_belongs_to_many :meals
  before_destroy { meals.clear }

  validates :title, presence: true, :format => { :with => /\#[a-zA-Z]{3,}/, :message => "Only letters allowed" }
end
