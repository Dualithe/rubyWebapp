Rails.application.routes.draw do
  devise_for :users
  resources :borrowings
  resources :readers
  resources :librarians
  resources :book_copies
  resources :users
  resources :books
  resources :libraries
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root "static#index"
  get '/time', to: 'time#index'

  get '/message', to: 'message#index'
  post '/message', to: 'message#write'
  # Defines the root path route ("/")
  # root "articles#index"
end
