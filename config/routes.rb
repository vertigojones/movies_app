Rails.application.routes.draw do
  get '/movies', to: 'movies#index'
  get '/movies/new', to: 'movies#new'
  post '/movies', to: 'movies#create'
  get '/movies/:id/edit', to: 'movies#edit'
  put '/movies/:id', to: 'movies#update'
  delete '/movies/:id', to: 'movies#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
