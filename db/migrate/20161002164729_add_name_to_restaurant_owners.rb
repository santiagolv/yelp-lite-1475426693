class AddNameToRestaurantOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurant_owners, :name, :string
  end
end
