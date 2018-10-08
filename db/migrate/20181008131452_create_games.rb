class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :location
      t.integer :number_of_players

      t.timestamps
    end
  end
end
