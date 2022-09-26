class Experience < ApplicationRecord

  #--VALIDATIONS--
  validates :name, presence: true
  # validates :description, presence: true
  # validates :image, presence: true
  validates :exp_type, presence: true
  validates :country, presence: true
  validates :city, presence:true
  validates :address, presence:true
  # validates :contact, presence: true
  # validates :url, presence: true
  # validates :price, presence: true

  #--DATABASE--
  belongs_to :user
  has_many :my_experiences
  has_many :reviews, through: :my_experiences
  has_one_attached :photo


  #--Geocoding--
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # pgSearch
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :address, :contact, :price, :exp_type, :country, :city, :contact ],
    associated_against: {
      user: [ :email, :first_name, :last_name, :username, :birthday, :city, :bio, :phone_number ]
    },
    using: {
      tsearch: { prefix: true }
    }

end
