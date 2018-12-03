class Booking < ApplicationRecord
  belongs_to :game, optional: true
  belongs_to :user
  monetize :amount_cents
end
