Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  post 'books' => 'books#create'
  devise_for :users
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
 
end