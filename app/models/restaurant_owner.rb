class RestaurantOwner < ApplicationRecord
  # Direct associations

  has_many   :review_replies,
             :foreign_key => "owner_id",
             :dependent => :destroy

  has_many   :restaurant_ownerships,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
