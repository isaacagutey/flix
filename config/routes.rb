Rails.application.routes.draw do
  root to: 'pages#front_page'
  get 'ui(/:action)', controller: 'ui'
  get '/home', to: 'videos#index'
  get '/register', to: 'users#new'
  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  get '/sign_out', to: 'sessions#destroy'
  get '/welcome', to: 'pages#front_page'

  # get '/search', to: 'videos#search'

  resources :videos, only: [:show] do
    collection do
      get :search
    end
  end
  resources :categories, only: [:show]
  resources :users, only:[:create]

end
