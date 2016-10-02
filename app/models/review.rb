class Review < ApplicationRecord
  # Direct associations

  has_one    :review_reply,
             :dependent => :destroy

  has_many   :photo_reviews,
             :dependent => :destroy

  belongs_to :user

  belongs_to :restaurant,
             :class_name => "RestaurantsProfile"

  # Indirect associations

  # Validations

end
