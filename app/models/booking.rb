class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space

  validates :starting_date, presence: true
  validates :ending_date, presence: true
end
