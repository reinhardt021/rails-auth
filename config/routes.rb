Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "home#index"
  get '/', to: 'home#index'

  get '/register', to: 'users#new'
  post '/users', to: 'users#create'

  get '/logout', to: 'sessions#destroy'
  #resources :sessions, only: [:new, :create, :destroy]
end
