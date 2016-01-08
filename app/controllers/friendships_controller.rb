class FriendshipsController < ApplicationController
  def create
    leader = User.find(params[:friend_id])
    @relationship = current_user.following_relationships.build(friend_id: params[:friend_id]) if !current_user.follows?(leader)
    if @relationship && @relationship.save
      flash[:notice] = "Friend added"
    else
      flash[:error] = "Couldn't add friend"
    end
    redirect_to people_path
  end

  def destroy
    @relationship = current_user.following_relationships.find_by(friend_id: params[:id])
     if @relationship.delete
      flash[:notice] = "You unfriended #{@relationship.leader.full_name}"
    else
      flash[:notice] = "unfriending unsuccessfull due to and error"
    end
    redirect_to people_path
  end
end