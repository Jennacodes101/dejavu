class MyExperience < ApplicationRecord
  belongs_to :user
  belongs_to :experience
  has_many :reviews, dependent: :destroy
  #there are no duplicates of user_id and experience_id more than once
  validates :experience_id, :uniqueness => true
end
