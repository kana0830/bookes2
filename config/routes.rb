Rails.application.routes.draw do
  
  devise_for :users
  root 'home#top' 
  get 'home/about'
  resources :users
  resources :books
  
  # get 'books/index'
  # get 'books/edit'
  # patch 'books/update' =>'books#update'
  # delete 'books/destroy' => 'books#destroy'
  # get 'books/:id' => 'books#show'
  
  # get 'users/:id' => 'users#new'
  # get 'users/index' => 'users/index'
  # post 'users/:id/create' =>'users#create'
  # get 'users/:id' => 'users#show'
  # get 'users/:id/edit' => 'users#edit'
  # post 'users/:id/update' => 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
