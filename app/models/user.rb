class User < ApplicationRecord
  has_many :services
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, inclusion: { in: (18..100) }
  validates :city, presence: true
end
