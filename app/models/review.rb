class Review < ApplicationRecord
  belongs_to :user, through: :my_experiences
  belongs_to :experience, through: :my_experiences
  validates :rating, presence: true
end
