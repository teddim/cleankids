Rails.application.routes.draw do

  root 'welcome#index'
  resources :tasks, only: [:index, :new, :create]
  resources :charts, only: [:index, :new, :create, :show]

  get 'signin' => 'authentications#new', as: :signin
  post 'signin' => 'authentications#create'
  get 'signout' => 'authentications#destroy', as: :signout
  get 'signup' => 'registrations#new', as: :signup
  post 'signup' => 'registrations#create'

end
