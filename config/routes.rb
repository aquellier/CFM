Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contact', to: 'pages#contact'
  get '/profile', to: 'pages#profile'
  resources :games do
    resources :bookings, only: [ :show, :new, :create] do
      resources :payments, only: [:new, :create]
    end
  end
  get '/my_games', to: 'games#my_games'
end
