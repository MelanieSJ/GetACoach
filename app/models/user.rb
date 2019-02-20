class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :services, dependent: :destroy
  has_many :bookings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, inclusion: { in: (18..100) }
  validates :city, presence: true
end
