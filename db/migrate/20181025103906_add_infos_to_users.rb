class AddInfosToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :size, :integer
    add_column :users, :weight, :integer
    add_column :users, :phone_number, :string
  end
end
