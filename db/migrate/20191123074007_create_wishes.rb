class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      # should not be created without associated toy and animal

      t.references :animal, null: false, foreign_key: true
      t.references :toy, foreign_key: true

      t.timestamps
    end
  end
end
