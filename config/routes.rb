Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :spaces do
    resources :bookings, only: %i[create]
  end
  delete '/bookings/:id', to: 'bookings#destroy', as: 'booking'
  get '/bookings/:id', to: 'bookings#confirm', as: 'booking_confirmation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
