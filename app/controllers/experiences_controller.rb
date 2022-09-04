class ExperiencesController < ApplicationController

  before_action :find_experience, only: [:show, :edit, :update, :destroy]

  def index
    # @experiences = Experience.all (replaced by the one below because of pundit)
    @experiences = policy_scope(Experience)
  end

  def show; end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    authorize @experience
    if @experience.save
      redirect_to experience_path(@experience), notice: 'Experience was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    @experience.update(experience_params)
    authorize @experience
    redirect_to experience_path(@experience)
  end


  def destroy
    @experience.destroy
    redirect_to experiences_path
  end

  private

  def find_experience
    @experience = Experience.find(params[:id])
    authorize @experience
  end

  def experience_params
   params.require(:experience).permit(:name, :description, :image, :exp_type, :subtype, :country, :city, :address, :contact, :url, :price)
  end

end
