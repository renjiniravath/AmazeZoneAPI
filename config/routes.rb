Rails.application.routes.draw do

  post '/auth/login', to: 'auth#login'

  get '/auth/current', to: 'auth#current'

  post '/signup', to: 'users#create'

  resources :credit_cards
  
  resources :products

  resources :transactions
end
