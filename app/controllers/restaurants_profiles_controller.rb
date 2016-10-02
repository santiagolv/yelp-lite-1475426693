class RestaurantsProfilesController < ApplicationController
  def index
    @restaurants_profiles = RestaurantsProfile.all
  end

  def show
    @restaurants_profile = RestaurantsProfile.find(params[:id])
  end

  def new
    @restaurants_profile = RestaurantsProfile.new
  end

  def create
    @restaurants_profile = RestaurantsProfile.new
    @restaurants_profile.name = params[:name]
    @restaurants_profile.description = params[:description]
    @restaurants_profile.website = params[:website]
    @restaurants_profile.address = params[:address]
    @restaurants_profile.cover_photo = params[:cover_photo]
    @restaurants_profile.neighborhood_id = params[:neighborhood_id]

    if @restaurants_profile.save
      redirect_to "/restaurants_profiles", :notice => "Restaurants profile created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurants_profile = RestaurantsProfile.find(params[:id])
  end

  def update
    @restaurants_profile = RestaurantsProfile.find(params[:id])

    @restaurants_profile.name = params[:name]
    @restaurants_profile.description = params[:description]
    @restaurants_profile.website = params[:website]
    @restaurants_profile.address = params[:address]
    @restaurants_profile.cover_photo = params[:cover_photo]
    @restaurants_profile.neighborhood_id = params[:neighborhood_id]

    if @restaurants_profile.save
      redirect_to "/restaurants_profiles", :notice => "Restaurants profile updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurants_profile = RestaurantsProfile.find(params[:id])

    @restaurants_profile.destroy

    redirect_to "/restaurants_profiles", :notice => "Restaurants profile deleted."
  end
end
