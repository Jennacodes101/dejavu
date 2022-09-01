class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :experiences, dependent: :destroy
  has_many :my_experiences, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :friends, dependent: :destroy
end
