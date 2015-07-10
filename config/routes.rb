Rails.application.routes.draw do
  root 'static_pages#home'

  post '/home', to: 'static_pages#home'
end
