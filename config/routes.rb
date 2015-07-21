Rails.application.routes.draw do
  

  root 'static_pages#home'
  
  get  'movies', to: "movies#index"
  post 'movies', to: "movies#index"
  get  'movies/show/', to: "movies#show", as: :show_movie


  # resources :movies


  get '/nomadlist', to: 'static_pages#nomadlist', as: :nomadlist
  get '/show', to: "static_pages#show", as: :show_city
  post 'nomadlist', to: "static_pages#nomadlist"


end
