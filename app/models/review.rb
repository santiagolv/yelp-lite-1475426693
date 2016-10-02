class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :restaurant,
             :class_name => "RestaurantsProfile"

  # Indirect associations

  # Validations

end
