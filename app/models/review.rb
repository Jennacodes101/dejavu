class Review < ApplicationRecord
  # has_one :experience, through: :my_experiences
  validates :rating, presence: true
end
