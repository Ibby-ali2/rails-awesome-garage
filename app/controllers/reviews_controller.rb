class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def create
    @car = Car.find(params[:car_id])
    @review = @car.reviews.build(review_params)
    if @review.save
      redirect_to cars_path
    else
      render 'cars/show'
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
