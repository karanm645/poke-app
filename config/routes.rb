Rails.application.routes.draw do
  root "welcome#index"
  resources :pokemon, only: [:index]

  namespace :api do 
    namespace :v1 do 
      resources :pokemon, only: :index 
    end
  end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
