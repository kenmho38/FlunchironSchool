Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get '/login', to: "auth#new", as: 'login'
  post '/login', to: "auth#create", as: 'authenticate'
  delete '/login', to: "auth#logout", as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
