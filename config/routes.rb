Rails.application.routes.draw do

  root 'sessions#home'

  get '/auth/google_oauth2/callback' => 'sessions#omniauth'

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' =>'sessions#create'

  delete '/logout' => 'sessions#destroy'


  resources :customers do 
    resources :appointments
  end
  
resources :appointments 
  

# Omniaut routes


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
