Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  post '/users/:follower_id/follows/:followee_id', to: 'users/follows#create'

  resources :users, only: [:new, :show, :create] do 
    resources :shows, only: :create, controller: 'users/shows'
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/shows', to: 'shows#index' 
  get '/shows/new', to: 'shows#new'
  post '/shows', to: 'shows#create'
  delete '/shows/:id', to: 'shows#destroy'

  get '/search', to: 'search#index'
end
