class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
