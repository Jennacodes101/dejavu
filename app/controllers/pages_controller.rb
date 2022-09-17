class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def feed
    @experiences=Experience.where(user_id: current_user.id)
  end

  def profile
    # set user access
    if current_user.id == params[:id]
      @access = 'owner'
    else
      @access = 'visitor'
      @profile_user = User.where(id: params[:id]).select(:name, :username, :city)
    end

    # retrieve array of user experiences
    @user_experiences = Experience.where(user_id: params[:id])

    # Active record an array of user my_experiences (wishlist)
    @user_my_experiences = MyExperience.where(user_id: params[:id])
    # Active record an array of done user my_experiences
    @user_done_experiences = MyExperience.where(user_id: params[:id],
                              done: true)

    # authorization

  end




end
