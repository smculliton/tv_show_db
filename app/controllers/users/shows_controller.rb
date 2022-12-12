class Users::ShowsController < ApplicationController
  def create
    UserShow.create!(user_id: params[:user_id], show_id: params[:show_id])

    redirect_to shows_path
  end

  def destroy
    usershow = UserShow.find_by(user_id: params[:user_id], show_id: params[:id])
    usershow.destroy

    redirect_to shows_path
  end
end