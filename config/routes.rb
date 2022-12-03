Rails.application.routes.draw do
  resources :hero_powers, only: [:create]
  resources :powers, only: [:index, :show, :update]
  resources :heros, only: [:index, :show]

  #get '/heroes', to: 'heroes#index'
  # get '/heroes/:id', to: 'heroes#show'
  # get '/powers', to: 'powers#index'
  # update '/powers/:id', to: 'powers#update'
  # get 'powers/:id', to: 'powers#show'
  # post 'hero_powers/:id', to: 'powers#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end


