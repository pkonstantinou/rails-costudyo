class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :space, dependent: :destroy

  validates :starting_date, presence: true
  validates :ending_date, presence: true
end
