Rails.application.routes.draw do
  resources :users, only:  [:create, :show]
  resources :user_attributes, only: [:index]
  post '/login', to: 'auth#create'
  get '/users/:id/roommates', to: 'users#roommates'
  get '/users/:id/recomandations', to: 'users#recomandations'
  get '/users/:id/attributes', to: 'users#attributes'
  get '/users/:id/detailed', to: 'users#detailed'

  # resources :recomandation, only: [:show]
  # resources :roommate, only: [:show]

end
