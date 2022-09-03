class Experience < ApplicationRecord
  belongs_to :user
  has_many :my_experiences
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
end
