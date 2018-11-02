class Game < ApplicationRecord
  has_many :bookings, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
  monetize :price_cents
  validates :metro_station, inclusion: { in: ["Campo Pequeno", "Praça de Espanha", "Olaias", "Anjos"],
    message: "%{value} is not registered as a valid metro station" }
    validates :number_of_players, inclusion: { in: [12, 14, 16],
    message: "%{value} is not registered as a valid metro station" }
end
