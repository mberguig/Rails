Rails.application.routes.draw do
  get 'users/users'

  get 'users/new'

  get 'users/index'

  get 'expenses/index'
  
  get 'expenses/new'

  
  get 'login' => 'login#login'

  get 'home/index'


  resources :expenses
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
