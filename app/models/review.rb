class Review < ApplicationRecord
  # Direct associations

  has_many   :photo_reviews,
             :dependent => :destroy

  belongs_to :user

  belongs_to :restaurant,
             :class_name => "RestaurantsProfile"

  # Indirect associations

  # Validations

end
