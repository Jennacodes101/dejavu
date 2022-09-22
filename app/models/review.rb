class Review < ApplicationRecord
  belongs_to :my_experience
  has_one :user, through: :my_experience
  validates :rating, presence: true
  # add validation for num values
end
