class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(params[:experience])
    @experience.save
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)

    redirect_to experience_path(@experience)
  end

  def destroy
    def destroy
      @experience = Experience.find(params[:id])
      @experience.destroy

      redirect_to experiences_path
  end

  private

  def experience_params
   params.require(:experience).permit(:name, :description, :image, :type, :sub-type, :country, :city, :address, :contact, :url, :price)
  end

end
