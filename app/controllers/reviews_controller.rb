class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_shop
  before_action :authenticate_user!


  respond_to :html

  def index
    @reviews = Review.all
    respond_with(@reviews)
  end

  def new
    @review = current_user.reviews.build
  end

  def edit
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.shop_id = @shop.id

    if @review.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_shop
      @shop = Shop.find(params[:shop_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
