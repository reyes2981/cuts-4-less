Rails.application.routes.draw do
  root 'sessions#home'

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'


  resources :hairdressers
  resources :appointments
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
