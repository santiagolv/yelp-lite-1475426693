class CreateRestaurantOwnerships < ActiveRecord::Migration
  def change
    create_table :restaurant_ownerships do |t|
      t.integer :restaurant_owner_id
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
