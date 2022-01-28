Rails.application.routes.draw do
  devise_for :trainers
  resources :traits
  resources :pokemons
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pokemons#index"

  namespace :api do
    resources :pokemons
  end
  get '/team', to: 'pokemons#team'
  put '/fav', to: 'pokemons#fav'
  put '/unfav', to: 'pokemons#unfav'
  resources :pokemons do
    collection do
      get :items
    end
  end
end
