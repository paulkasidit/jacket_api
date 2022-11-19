class ReviewsController < ApplicationController

  def new
    @jacket = Jacket.find(params[:jacket_id])
    @review = @Jacket.reviews.new
  end

  def show
    @jacket = Jacket.find(params[:jacket_id])
    @review = Review.find(params[:id])
  end

  def create
    @jacket = Jacket.find(params[:jacket_id])
    @review = @jacket.reviews.new(review_params)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to jacket_path(@review.jacket)
    else
      @review = jacket.find(params[:album_id])
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to jacket_path(@review.jacket)
  end

  private
  def review_params
    params.require(:review).permit(:jacket_id, :author, :content_body)
  end

end