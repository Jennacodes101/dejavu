class MyExperiencesController < ApplicationController
  before_action :find_experience, except: [:destroy]

  def new
    @my_experience = My_experience.new
  end

  def create
    @my_experience = My_experience.new(my_experience_params)
    @my_experience.experience = @experience
    if @my_experience.save
      redirect_to experience_path(@experience), notice: 'My_Experience was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @my_experience = My_experience.find(params[:id])
    @my_experience.destroy
    redirect_to experience_path(@my_experience.experience)
  end

  private

  def my_experience_params
    params.require(:my_experience).permit(:done)
  end

  def find_experience
    @experience = Experience.find(params[:experience_id])
  end
end
