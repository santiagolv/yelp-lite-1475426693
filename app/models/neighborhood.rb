class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             :class_name => "RestaurantsProfile",
             :dependent => :destroy

  belongs_to :city

  # Indirect associations

  # Validations

end
