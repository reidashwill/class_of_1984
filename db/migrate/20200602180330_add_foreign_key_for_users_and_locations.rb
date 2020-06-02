class AddForeignKeyForUsersAndLocations < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :users, :items
    add_foreign_key :locations, :items
  end
end
