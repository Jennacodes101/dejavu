class Invitation < ApplicationRecord
  belongs_to :user

  # To hide button when users are either friends or already have a pending friend request
  def self.reacted?(id1, id2)
    case1 = !Invitation.where(user_id: id1, friend_id: id2).empty?
    case2 = !Invitation.where(user_id: id2, friend_id: id1).empty?
    case1 || case2
  end

  # checking a confirmed record for two given ids.
  def self.confirmed_record?(id1,id2)
    case1 = !Invitation.where(user_id: id1, friend_id: id2, confirmed: true ).empty?
    case2 = !Invitation.where(user_id: id2, friend_id: id1, confirmed: true).empty?
    case1 || case2
  end

  def self.pending_record?(id1,id2)
    case1 = !Invitation.where(user_id: id1, friend_id: id2, confirmed: false ).empty?
    case2 = !Invitation.where(user_id: id2, friend_id: id1, confirmed: false).empty?
    case1 || case2
  end

  # to find the invitation record of two given ids. returns instance, Useful when deleting or retracting an invite
  def self.find_invitation(id1, id2)
    if Invitation.where(user_id: id1, friend_id: id2).empty?
      Invitation.where(user_id: id2, friend_id: id1)[0]
    else
      Invitation.where(user_id: id1, friend_id: id2)[0]
    end
  end

end
