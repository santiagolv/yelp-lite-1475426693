class CreatePhotoReviews < ActiveRecord::Migration
  def change
    create_table :photo_reviews do |t|
      t.integer :review_id
      t.string :photos

      t.timestamps

    end
  end
end
