Rails.application.routes.draw do
  resources :users, only:  [:create, :show]
  resources :user_attributes, only: [:index]
  post '/login', to: 'auth#create'
end
