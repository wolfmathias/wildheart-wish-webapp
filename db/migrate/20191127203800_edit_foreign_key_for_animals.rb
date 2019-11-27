class EditForeignKeyForAnimals < ActiveRecord::Migration[6.0]
  def change
    rename_index :animals, "keeper_id", "user_id"
    rename_column :animals, :keeper_id, :user_id
  end
end
