Rails.application.routes.draw do
  resources :users, only: [:create, :show]
  post '/login', to: 'auth#create'
  resources :user_attributes, only: [:index]
end
