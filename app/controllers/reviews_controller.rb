class ReviewsController < ApplicationController
  before_action :set_video, only: [:create, :edit, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = @video.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render :template => "videos/review.js.erb" }
      end
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end

 private
  def review_params
    params.require(:review).permit!
  end

 def set_video
   @video = Video.find_by slug: params[:video_id]
 end
end