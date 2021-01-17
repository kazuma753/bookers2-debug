Rails.application.routes.draw do
  resources :videos
  root 'home#top'
  get 'home/about'
  get 'books/search'=>'books#search'
  post 'books/search'=>'books#search'
  post 'books' => 'books#create'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
  
end