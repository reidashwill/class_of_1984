class AddColumnsToItemsAndLocations < ActiveRecord::Migration[5.2]
  def change
    add_column(:items, :location_id, :integer)
    add_column(:items, :user_id, :integer)
    add_column(:items, :is_available?, :boolean, default: false)
    add_foreign_key :items, :users
    add_foreign_key :items, :locations
  end
end

