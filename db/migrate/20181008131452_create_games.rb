class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.date     :date
      t.time     :time
      t.string   :location
      t.integer  :number_of_players

      t.timestamps
    end
  end
end
