class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    redirect_to new_restaurant_review_path(restaurant)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews.create(review_params)
  end

  def review_params
    params.require(:review).permit(:thoughts, :rating)
  end

end
