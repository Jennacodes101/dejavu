class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences, dependent: :destroy
  has_many :my_experiences, dependent: :destroy
  has_many :reviews, through: :my_experiences, dependent: :destroy
  has_many :friends, dependent: :destroy
  # belongs_to :friends, dependent: destroy

  has_one_attached :photo
end
