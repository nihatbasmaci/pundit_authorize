class CitiesController < ApplicationController
 before_filter :authenticate_user!
 before_action :set_city, only: [:edit, :update, :destroy]

  def edit
  end


  def show
  end

 
  def index
    @cities = City.all
    authorize @cities
  end
 
  def new
    @city = City.new
    authorize @city
  end

  private

  def set_city
  	@city = City.find([:id])
  end

end
