class AddIndexToUsers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :name, :string
  	add_column :users, :name, :string
    add_index :users, :name, unique: true
  end
end
