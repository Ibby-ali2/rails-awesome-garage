Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "cars#index"
  resources :owners do
    resources :cars, only: [:index]
  end

  resources :cars do
    resources :reviews, only: [:create, :index]
    resources :favourites, only: [:create, :destroy]
  end

  resources :favourites, only: [:index]

end
