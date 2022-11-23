Rails.application.routes.draw do
  get 'splashes/index'
  devise_for :users
   
  get 'expenses/index'
  get 'expenses/new'
  get 'categories/index'
  get 'categories/new'
  get 'users/index'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index"
  resource :users
  resources :categories, only: [:index, :show, :new, :create] do
    resource :expenses, only: [:index, :show, :new, :create]
  end
end
