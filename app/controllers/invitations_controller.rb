class InvitationsController < ApplicationController
  before_action :set_invite, only: [:update, :destroy]

  def create
    # get info from URL
    id1 = params[:ids][:id1]
    id2 = params[:ids][:id2]
    @invitation = Invitation.new(user_id: id1, friend_id: id2)
    # if inverse exists user_id: id2, friend_id: id1 return error
    authorize @invitation
    @invitation.save!
    redirect_to profile_path(id2)
    #add code to js btn here
  end

  def destroy
    authorize @invitation
    @invitation.destroy
    redirect_to profile_path(current_user)
  end

  def update
    authorize @invitation
    @invitation.confirmed = true
    @invitation.save!
    redirect_to profile_path(current_user)
  end

  private

  def set_invite
    id1 = params[:ids][:id1]
    id2 = params[:ids][:id2]
    @invitation = Invitation.find_invitation(id1, id2)
  end
end
