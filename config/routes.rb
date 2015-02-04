RoadTripper::Application.routes.draw do
  get "sessions/new"
  # get 'users/new', to: 'users#new', as:'signup'
  root to: "home#index"
  resources :users
  resources :sessions
  resources :trips
end
