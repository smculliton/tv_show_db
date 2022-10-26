class ShowsController < ApplicationController
  def index 
    @shows = Show.all
  end

  def new
  end

  def create
    show = ShowService.new
    Show.create!(show.film_info(params[:show_id]))

    redirect_to '/shows'
  end
end