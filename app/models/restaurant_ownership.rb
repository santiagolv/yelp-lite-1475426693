class RestaurantOwnership < ApplicationRecord
  # Direct associations

  belongs_to :restaurant_owner

  belongs_to :restaurant,
             :class_name => "RestaurantsProfile"

  # Indirect associations

  # Validations

end
