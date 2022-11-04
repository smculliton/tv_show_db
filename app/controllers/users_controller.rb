class UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
  end

  def new 
  end

  def create
    user = User.new(user_params)

    user.save
    redirect_to "/users/#{user.id}"
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end