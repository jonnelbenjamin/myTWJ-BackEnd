Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  resources :users, :entries
end
