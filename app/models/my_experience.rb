class MyExperience < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  #there are no duplicates of user_id and experience_id more than once
  # validates :experience_id, :uniqueness => true
  validates :experience_id, uniqueness: { scope: :user_id }
end
