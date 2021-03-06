Rails.application.routes.draw do
  root to: 'videos#index'
  get 'ui(/:action)', controller: 'ui'
  get 'home', to: 'videos#index'
  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'sign_out', to: 'sessions#destroy'
  get 'welcome', to: 'videos#index'
  get 'queue_items', to: 'queue_items#index'
  post 'add_queue_item', to: 'queue_items#create'
  post 'update_queue_items', to: 'queue_items#update'
  get 'favourites', to: 'favourites#index'
  post 'add_favourite', to: 'favourites#create'


  get 'people', to: 'users#people'

  resources :videos, only: [:show] do
    collection do
      post :search
    end

    member do
      get 'genre_show'
    end

    # member do
    #   get 'movie_show_page'
    # end
  end
  resources :categories, only: [:show]
  resources :users, only: [:create, :show]
  resources :queue_items, only: [:destroy]
  resources :favourites, only: [:destroy]
  resources :friendships, only: [:create, :destroy]
  resources :admins, only: [:index]
  resources :reviews

end
