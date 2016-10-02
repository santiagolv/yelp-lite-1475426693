class CreateRestaurantsProfiles < ActiveRecord::Migration
  def change
    create_table :restaurants_profiles do |t|
      t.string :name
      t.text :description
      t.string :website
      t.string :address
      t.string :cover_photo
      t.integer :neighborhood_id

      t.timestamps

    end
  end
end
