class ReviewsController < ApplicationController
  before_action :find_my_experience, except: [:destroy]

  def show; end

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.my_experience_id = params["my_experience_id"]
    # @review.user = current_user
    authorize @review
    if @review.save
      redirect_to experience_path(@my_experience.experience_id), notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to experience_path(@review.experience)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def find_my_experience
    # naming error, name it
    @my_experience = MyExperience.find(params[:my_experience_id])
  end
end
