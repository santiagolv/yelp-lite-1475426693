class ReviewReply < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "RestaurantOwner"

  belongs_to :review

  # Indirect associations

  # Validations

end
