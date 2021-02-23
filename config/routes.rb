Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :spaces, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
  get '/bookings/:id', to: 'bookings#confirm', as: 'booking_confirmation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
