Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'lists#index'
  # lists routes
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show'
  # post 'lists', to: 'lists#create'
  resources :lists, only: [:new, :show, :index, :create]

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:id/bookmarks', to: 'bookmarks#create'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
