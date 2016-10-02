class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :stars

      t.timestamps

    end
  end
end
