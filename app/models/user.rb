class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_instruments, dependent: :destroy
  has_many :user_genres, dependent: :destroy
  has_many :user_artists, dependent: :destroy
  has_many :instruments, through: :user_instruments
  has_many :genres, through: :user_genres
  has_many :artists, through: :user_artists
  has_many :jams, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :creations, dependent: :destroy

  has_many :messages
  has_many :chatmembers
  has_many :chatrooms, through: :chatmembers
  has_many :booked_jams, through: :bookings, source: :jam
  has_one_attached :avatar

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :description, presence: true
end
