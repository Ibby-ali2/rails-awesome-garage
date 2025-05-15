class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find(params[:id])
    @cars = @owner.cars
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.create(owner_params)
    if @owner.save
      redirect_to cars_path
    else
      render unprocessable: :entity
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:nickname)
  end

end
