Rails.application.routes.draw do
  get 'pages/my_bookings', to: "pages#my_bookings"
  get 'pages/my_places', to: "pages#my_places"
  devise_for :users
  get 'bookings/new'
  get 'bookings/create'

  root to: 'pages#home'
  resources :places do
      resources :bookings
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
