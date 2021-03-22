Rails.application.routes.draw do

  root 'sessions#home'

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' =>'sessions#create'

  delete '/logout' => 'sessions#destroy'




  resources :customers do 
    resources :appointments, only: [:new, :create, :index]
  end
  
  resources :appointments do 
    resources :customers, only: [:new, :create, :index]
  end
  




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
