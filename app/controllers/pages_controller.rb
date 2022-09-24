class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @home = true
  end

  def feed
  end

  def profile
    # set user access
    if current_user.id == params[:id].to_i
      @access = 'owner'
      # invite info - connected to User info for name, photo.key but not of user
      @friend_invites = (current_user.pending_invitations + current_user.requested_invitations).sort_by(&:created_at)
      # user info - friend
      @friends = current_user.friends
    else
      @access = 'visitor'
      @profile_user = User.find_by(id: params[:id])
      @profie_user_friends = @profile_user.friends
    end

    # retrieve array of user experiences
    @user_experiences = Experience.where(user_id: params[:id])

    # Active record an array of user my_experiences (wishlist)
    @user_my_experiences = MyExperience.where(user_id: params[:id])
    # Active record an array of done user my_experiences
    @user_done_experiences = MyExperience.where(user_id: params[:id], done: true)
  end
end
