Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/shows', to: 'shows#index' 
  get '/shows/new', to: 'shows#new'
  post '/shows', to: 'shows#create'
end
