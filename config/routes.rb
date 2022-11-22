Rails.application.routes.draw do
  devise_for :users
  get 'expenses/index'
  get 'expenses/new'
  get 'expenses/create'
  get 'expenses/show'
  get 'categories/index'
  get 'categories/new'
  get 'categories/create'
  get 'categories/show'
  get 'users/index'
  get 'users/new'
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"
end
