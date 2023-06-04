Rails.application.routes.draw do
  devise_for :users
  get 'splashes/index'
  get 'expenses/index'
  get 'expenses/new'
  get 'categories/index'
  get 'categories/new'
  get 'users/index'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splashes#index"
  resources :users  do
    member do
      get :confirm_email
    end
  end
  resources :categories, only: [:index, :show, :new, :create] do
    resources :expenses, only: [:index, :show, :new, :create]
  end
end
