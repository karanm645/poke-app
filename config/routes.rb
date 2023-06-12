Rails.application.routes.draw do
  root "welcome#index"
  resources :pokemon, only: [:index]

  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server_error'

  namespace :api do 
    namespace :v1 do 
      resources :pokemon, only: :index 
    end
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
