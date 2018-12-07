class Field < ApplicationRecord
  has_many :games
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
