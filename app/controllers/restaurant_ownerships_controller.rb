class RestaurantOwnershipsController < ApplicationController
  def index
    @restaurant_ownerships = RestaurantOwnership.all
  end

  def show
    @restaurant_ownership = RestaurantOwnership.find(params[:id])
  end

  def new
    @restaurant_ownership = RestaurantOwnership.new
  end

  def create
    @restaurant_ownership = RestaurantOwnership.new
    @restaurant_ownership.restaurant_owner_id = params[:restaurant_owner_id]
    @restaurant_ownership.restaurant_id = params[:restaurant_id]

    if @restaurant_ownership.save
      redirect_to "/restaurant_ownerships", :notice => "Restaurant ownership created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant_ownership = RestaurantOwnership.find(params[:id])
  end

  def update
    @restaurant_ownership = RestaurantOwnership.find(params[:id])

    @restaurant_ownership.restaurant_owner_id = params[:restaurant_owner_id]
    @restaurant_ownership.restaurant_id = params[:restaurant_id]

    if @restaurant_ownership.save
      redirect_to "/restaurant_ownerships", :notice => "Restaurant ownership updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant_ownership = RestaurantOwnership.find(params[:id])

    @restaurant_ownership.destroy

    redirect_to "/restaurant_ownerships", :notice => "Restaurant ownership deleted."
  end
end
