class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :game, foreign_key: true
      t.references :user, foreign_key: true
      t.string :state
      t.monetize :price, currency: { present: false }
      t.json :payment
      t.timestamps
    end
  end
end
