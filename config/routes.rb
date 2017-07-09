Rails.application.routes.draw do


  devise_for :users

  resources :users
  resources :musics
  resources :lives
  resources :pictures
  resources :blogs


  root 'pages#home'

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
