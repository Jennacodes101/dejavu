class Review < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  validates :rating, presence: true
end
