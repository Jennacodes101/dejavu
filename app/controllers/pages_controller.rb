class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def feed
    @experiences=Experience.where(user_id: current_user.id)

    # Start PgSearch
    if params[:query].present?
      @experiences = Experience.global_search(params[:query])
    end
    geo_map
    # End PgSearch
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
    @user_done_experiences = MyExperience.where(user_id: params[:id],
                              done: true)
  end

  private

  def geo_map
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: experience }),
        image_url: helpers.asset_url("green_marker.png")
      }
    end
  end
end
