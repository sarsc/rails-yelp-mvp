class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show]
  def index
    @restaurants = Restaurant.all
  end

  def show
    @review = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurants_params)
    # if @restaurant.save
    #   redirect_to restaurant_path(@restaurant)
    # else
    #   render :new
    # end
    @restaurant.save ? (redirect_to restaurant_path(@restaurant)) : (render :new)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurants_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
