class CreateReviewReplies < ActiveRecord::Migration
  def change
    create_table :review_replies do |t|
      t.integer :review_id
      t.integer :owner_id
      t.string :reply_content

      t.timestamps

    end
  end
end
