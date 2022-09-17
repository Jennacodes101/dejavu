class InvitationsController < ApplicationController
  before_action :set_invite, only: [:update, :destroy]

  def create
    # get info from URL
    id1 = params[:ids][:id1]
    id2 = params[:ids][:id2]
    @invitation = Invitation.new(user_id: id1, friend_id: id2)
    # if inverse exists user_id: id2, friend_id: id1 return error
    @invitation.save!
    redirect_to profile_path(@profile_user.id)
    #add code to js btn here
  end

  def destroy
    @invitation.destroy
    redirect_to profile_path(current_user)
  end

  def update
    # p current_user
    invitation.update(confirmed: true)
    redirect_to profile_path(current_user)
  end

  private

  def set_invite
    id1 = params[:ids][:id1]
    id2 = params[:ids][:id2]
    @invitation = Invitation.find_invitation(id1, id2)
  end
end
