class ExperiencesController < ApplicationController

  before_action :find_experience, only: [:show, :edit, :update, :destroy, :create_review, :create_alt]


  def index
    # Start Geocoding
    @experiences = Experience.geocoded
    @experiences = policy_scope(Experience)

    # Start PgSearch
    if params[:query].present?
      @experiences = Experience.global_search(params[:query])
    end
    geo_map

    # End PgSearch
  end

  def show
    @my_experience = MyExperience.find_by(experience: @experience, user: current_user)
    @review = Review.find_by(my_experience_id: @my_experience.id) unless @my_experience.nil?
    geo_map2(@experience)
  end

  def new
    @experience = Experience.new
    @exp_types = ['museum','food', 'landmark', 'nightlife', 'nature','classes', 'outdoor activity', 'service', 'excursion']
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

  def create_alt
    @my_experience = MyExperience.new(done: false , user_id: current_user.id, experience_id: params[:id] )
    if @my_experience.save
      redirect_to profile_path(current_user.id), notice: 'My_Experience was successfully created.'
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
    params.require(:experience).permit(:name, :description, :image, :exp_type, :country, :city, :address, :contact, :url, :price, :photo)
  end

  def geo_map

    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: experience }),
        image_url: experience.user.photo.key
        # image_url: Cloudinary::Utils.cloudinary_url(experience.user.photo.key)
      }
    end
  end

  def geo_map2(experience)

   @markers = [
      {
        lat: experience.latitude,
        lng: experience.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { experience: experience }),
        # image_url: Cloudinary::Utils.cloudinary_url(experience.user.photo.key)
        image_url: experience.user.photo.key
      }
    ]
  end
end
