Rails.application.routes.draw do

  root 'sessions#home'

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' =>'sessions#create'

  delete '/logout' => 'sessions#destroy'


  resources :hairdressers
  resources :appointments
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
