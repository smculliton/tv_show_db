class ShowsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    # @shows = Show.all
  end

  def new
  end

  def create
    Show.create!(ShowService.show_info(params[:show_id]))

    redirect_to '/shows'
  end

  def destroy
    show = Show.find(params[:id])
    show.destroy

    redirect_to '/shows'
  end
end