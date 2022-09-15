class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    # raise
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new # Needed to instantiate the form_with
  end

  def create
    # La opcion propuesta aqui dara error,por seguridad de los parametros
    # @restaurant = Restaurant.new(params[:restaurant])
    # @restaurant.save # Will raise ActiveModel::ForbiddenAttributesError
    # redirect_to restaurant_path(@restaurant)
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant) # restaurant_path contains show as route
  end


  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to restaurants_path, status: :see_other # permite ver un status code 303
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
