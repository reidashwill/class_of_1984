class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :atk_mod
      t.integer :hp_mod
    end
  end
end
