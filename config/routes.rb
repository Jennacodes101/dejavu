Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # experiences with nested my_experiences
  resources :experiences do
    resources :my_experiences, only: [:new, :create]
    post :create_alt, on: :member
  end

  # my_experiences with nested reviews
  resources :my_experiences, only: [:index, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  # invitations(friends)
  resources :invitations, only: [:create, :destroy, :update]

  # custom routes
  get 'profile/:id', to: 'pages#profile', as: 'profile'
  get 'feed', to: 'pages#feed', as:'feed'
  get 'done/:id', to: 'my_experiences#done', as: 'done'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
