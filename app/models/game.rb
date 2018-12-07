class Game < ApplicationRecord
  belongs_to :field, optional: true
  has_many :bookings, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
  monetize :price_cents
  validates :location, presence: true
  validates :number_of_players, inclusion: { in: [10, 12, 14, 16, 18, 20, 22],
  message: "%{value} is not a valid number" }
  belongs_to :creator, class_name: 'User', optional: true
end
