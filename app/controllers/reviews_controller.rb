class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id].to_i)
    @review = @product.reviews.new
    render :new
  end

  def create
    @product = Product.find(params[:product_id].to_i)
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:product_id].to_i)
    @review = Review.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:product_id].to_i)
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to survey_path(@review.survey)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to survey_path(@review.survey)
  end

private
def review_params
  params.require(:review).permit(:author, :content_body, :rating)
end
