Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # experiences with nested reviews and my_experiences
  resources :experiences do
    resources :reviews, only: [:new, :create]
    resources :my_experiences, only: [:new, :create, :edit]
  end
  resources :reviews, only: [:destroy]

  # friends
  resources :friends, only: [:create, :delete, :update]

  # custom routes
  get 'profile', to: 'pages#profile'
  get 'feed', to: 'pages#feed'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
