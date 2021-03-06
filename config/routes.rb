Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', to: 'pages#contact'
  get '/profile', to: 'pages#profile'
  get 'privacy', to: 'pages#privacy'
  resources :games
  resources :bookings, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
  resources :fields, only: [:create]
  get '/my_games', to: 'games#my_games'
end
