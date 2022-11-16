class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]
  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to restaurant_path(@review.restaurant), status: :see_other
  # end

  def new
    # We need @restaurant in our `simple_form_for`
    @review = Review.new
    redirect_to restaurant_path(@restaurant)
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
