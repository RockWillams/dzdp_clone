Rails.application.routes.draw do
  resources :reviews

  devise_for :users
  resources :shops

  root 'shops#index'

end
