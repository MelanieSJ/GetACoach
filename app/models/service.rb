class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :address, presence: true
  validates :category, presence: true
  validates :city, presence: true
end
