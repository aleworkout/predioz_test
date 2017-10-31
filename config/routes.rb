Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :shops

  root 'shops#index'
  
  
  get 'users/:id/shops' => 'users#shops', :as => :user_shops

  resources :users do
  member do
    get :shops
  end
  end
  
end
