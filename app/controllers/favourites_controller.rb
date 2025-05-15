class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:id])
    @favourite = Favourite.new(car: @car)

    if @favourite.save
      redirect_to cars_path
    else
      redirect_to cars_path, alert: "Could not add to Favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to cars_path
  end
end
