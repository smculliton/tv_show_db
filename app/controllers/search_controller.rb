class SearchController < ApplicationController
  def index
    @results = ShowService.search(params[:search]) unless params[:search] == nil
  end
end