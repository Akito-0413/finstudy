Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :studys

  resources :steps

  resources :pages

  resources :relationships, only: [:create, :destroy]

  root 'pages#index'
end
