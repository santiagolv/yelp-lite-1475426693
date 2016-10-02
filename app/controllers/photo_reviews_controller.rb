class PhotoReviewsController < ApplicationController
  def index
    @photo_reviews = PhotoReview.all
  end

  def show
    @photo_review = PhotoReview.find(params[:id])
  end

  def new
    @photo_review = PhotoReview.new
  end

  def create
    @photo_review = PhotoReview.new
    @photo_review.review_id = params[:review_id]
    @photo_review.photos = params[:photos]

    if @photo_review.save
      redirect_to "/photo_reviews", :notice => "Photo review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @photo_review = PhotoReview.find(params[:id])
  end

  def update
    @photo_review = PhotoReview.find(params[:id])

    @photo_review.review_id = params[:review_id]
    @photo_review.photos = params[:photos]

    if @photo_review.save
      redirect_to "/photo_reviews", :notice => "Photo review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @photo_review = PhotoReview.find(params[:id])

    @photo_review.destroy

    redirect_to "/photo_reviews", :notice => "Photo review deleted."
  end
end
