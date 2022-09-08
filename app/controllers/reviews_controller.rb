class ReviewsController < ApplicationController
  before_action :find_my_experience, except: [:destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.my_experience = @my_experience
    if @review.save
      redirect_to experience_path(@experience), notice: 'Experience was successfully created.'
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
    @experience = MyExperience.find(params[:my_experience_id])
  end
end
