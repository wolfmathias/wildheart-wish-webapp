class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      # always needs to be associated with donor
      # does not necessarily need to be associated with wish if donor makes general donation to WildHeart (null: true as default)
      
      t.references :donor, null: false, foreign_key: true
      t.references :wish, foreign_key: true

      t.timestamps
    end
  end
end
