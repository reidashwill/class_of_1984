class RemoveColumnsFromUsersAndLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column(:locations, :item_id)
    remove_column(:users, :item_id)
  end
end
