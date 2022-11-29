class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :instruments, through: :user_instruments
  has_many :genres, through: :user_genres
  has_many :artists, through: :user_artists
  has_many :jams, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :posts, dependent: :destroy

  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
