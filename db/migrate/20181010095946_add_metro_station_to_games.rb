class AddMetroStationToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :metro_station, :string
  end
end
