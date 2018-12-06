class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.datetime :datetime
      t.string   :location
      t.string   :field
      t.integer  :number_of_players

      t.timestamps
    end
  end
end
