Rails.application.routes.draw do



  devise_for :users

  resources :users
  resources :musics
  resources :pictures
  resources :blogs
  resources :dances

  get 'products' => 'products#index'

  root 'pages#home'

  get 'pages/about'

  post 'users/pay' => 'users#pay'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
