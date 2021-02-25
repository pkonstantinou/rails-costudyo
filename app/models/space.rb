class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
