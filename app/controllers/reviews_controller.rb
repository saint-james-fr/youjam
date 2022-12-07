class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @reviewer = current_user
    @review.reviewer = @reviewer
    @review.reviewee = User.find(params[:review][:reviewee_id])
    authorize @review
    @review.save
    redirect_to profile_path(@review.reviewee)

  end



  def update
  end

  def delete
  end


  private

  def review_params
    params.require(:review).permit(:description, :rating, :reviewee_id)
  end
end
