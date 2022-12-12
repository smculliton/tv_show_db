class SearchController < ApplicationController
  def index
    # first searches local database for shows that match description
    # if none, execute api call
    # if api call executed, save all search results to database
    if Show.search(params[:search]).present?
      @results = Show.search(params[:search])
    else
      search = ShowService.search(params[:search]) unless params[:search] == nil
      @results = Show.save_all(search)
    end
  end
end