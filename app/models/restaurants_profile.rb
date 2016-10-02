class RestaurantsProfile < ApplicationRecord
  # Direct associations

  has_many   :restaurant_ownerships,
             :foreign_key => "restaurant_id",
             :dependent => :destroy

  has_many   :reviews,
             :foreign_key => "restaurant_id",
             :dependent => :destroy

  belongs_to :neighborhood

  # Indirect associations

  # Validations

end
