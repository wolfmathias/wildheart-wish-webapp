class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.references :donor, null: false, foreign_key: true
      t.references :wish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
