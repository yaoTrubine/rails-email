Rails.application.routes.draw do
  root 'users#new'
  
  post '/users', to: 'users#create'
  get '/success', to: 'users#success'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
