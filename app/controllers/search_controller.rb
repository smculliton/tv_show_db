class SearchController < ApplicationController
  def index
    @results = ShowService.new.search(params[:search]) unless params[:search] == nil
  end
end