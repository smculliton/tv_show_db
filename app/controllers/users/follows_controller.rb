class Users::FollowsController < ApplicationController
  def create
    Follow.create!(follow_params)

    redirect_to user_path(params[:follower_id])
  end

  private

  def follow_params
    params.permit(:followee_id, :follower_id)
  end
end