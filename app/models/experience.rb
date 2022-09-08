class Experience < ApplicationRecord

  #--VALIDATIONS--
  validates :name, presence: true
  # validates :description, presence: true
  # validates :image, presence: true
  validates :exp_type, presence: true
  validates :subtype, presence: true
  validates :country, presence: true
  validates :city, presence:true
  # validates :address, presence:true
  # validates :contact, presence: true
  # validates :url, presence: true
  # validates :price, presence: true

  #--DATABASE--
  belongs_to :user
  has_many :my_experiences
  has_many :reviews, through: :my_experiences
  has_one_attached :photo

end
