class ShowService
  def film_info(id)
    info = new_film(id)
    { name: info[:name], genre1: info[:genres][0], genre2: info[:genres][1], genre3: info[:genres][2], rating: info[:rating][:average] }
  end

  def new_film(id)
    get_url("https://api.tvmaze.com/shows/#{id}")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def search(search_param)
    get_url("https://api.tvmaze.com/search/shows?q=#{search_param}")[0..4]
  end
end