class Booking < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :user
  monetize :price_cents
end
