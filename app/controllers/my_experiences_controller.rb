class MyExperiencesController < ApplicationController
  before_action :find_experience, except: [:index, :destroy, :done]

  def index
    @my_experiences = policy_scope(MyExperience)
  end

  def show
    # @my_experience = MyExperience.find_by(experience_id: @experience.id, user_id: current_user.id)
    #   if @my_experience == nil
    #     @my_experience = MyExperience.new
    #   else
    #    @review = Review.find_by(my_experience_id: @my_experience.id)
    #   end
  end

  def new
    @my_experience = MyExperience.new
    authorize @my_experience
  end

  def create
    @my_experience = MyExperience.new(my_experience_params)
    @my_experience.experience = @experience
    authorize @my_experience
    if @my_experience.save
      redirect_to my_experiences_path, notice: 'Wishlist experience was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @my_experience.update(my_experience_params)
    authorize @my_experience
    redirect_to experience_path(@my_experience.experience)
  end

  def destroy
    @my_experience = MyExperience.find(params[:id])
    @my_experience.destroy
    redirect_to experience_path(@my_experience.experience)
  end

  def done
    @my_experience = MyExperience.find(params[:id])
    authorize @my_experience
    @my_experience.done = true
    if @my_experience.save!
      redirect_to profile_path(current_user.id), notice: 'Your wishlist was successfully updated.'
    else
      redirect_to profile_path(current_user.id), notice: "Your wishlist failed to update. Please try again later"
    end
  end
  private

  def my_experience_params
    params.require(:my_experience).permit(:done, :user_id)
  end

  def find_experience
    @experience = Experience.find(params[:experience_id])
  end
end
