class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @ratings_collection = Review::RATINGS
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)

    @review.restaurant = @restaurant

    if @review.save
      flash[:alert] = "Review added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Rating must be between 1 - 5"
      render :new
    end
  end

  def index
    if params[:restaurant_id]
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reviews = @restaurant.reviews
    else
      @reviews = Review.all
    end
  end



  private
    def review_params
      params.require(:review).permit(:rating, :body, :timestamps)
    end
end
