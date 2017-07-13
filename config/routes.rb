Rails.application.routes.draw do


  get 'dances/new'

  get 'dances/show'

  devise_for :users

  resources :users
  resources :musics
  # resources :lives
  resources :pictures
  resources :blogs
  resources :dances


  root 'pages#home'

  get 'pages/about'

  post 'users/pay' => 'users#pay'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
