RoadTripper::Application.routes.draw do
  get "sessions/new"
  # get 'users/new', to: 'users#new', as:'signup'
  root to: "home#index"
  resources :users
  resources :sessions
  get 'trips/add_stop' => 'trips#add_stop', :as => :add_stop

  resources :trips


end
