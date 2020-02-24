Rails.application.routes.draw do
  get 'places/new'
  get 'places/show'
  get 'places/edit'
  get 'places/update'
  get 'places/create'
  get 'places/destroy'
  get 'places/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
