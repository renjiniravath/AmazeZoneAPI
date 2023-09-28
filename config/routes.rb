Rails.application.routes.draw do

  post '/auth/login', to: 'auth#login'

  post '/signup', to: 'users#create'

  resources :products

end
