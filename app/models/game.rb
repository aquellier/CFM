class Game < ApplicationRecord
  has_many :bookings, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
