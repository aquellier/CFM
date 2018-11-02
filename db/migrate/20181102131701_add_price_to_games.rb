class AddPriceToGames < ActiveRecord::Migration[5.2]
  def change
    add_monetize :games, :price, currency: { present: false }
  end
end
