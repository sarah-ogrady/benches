Rails.application.routes.draw do
  devise_for :users
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  root to: 'pages#home'
  resources :benches, only: [ :index, :show ]
  resources :merchandises, only: [ :index, :show ]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
