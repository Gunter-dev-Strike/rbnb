Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'
  resources :places do
      resources :bookings
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
