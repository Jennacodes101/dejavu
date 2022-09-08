Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # experiences
  resources :experiences do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

  # my_experiences- new, update,
  resources :my_experiences, except: [:edit, :new]

  # friends
  resources :friends, only: [:create, :delete, :update]

  # custom routes
  get 'profile', to: 'pages#profile'
  get 'feed', to: 'pages#feed'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
