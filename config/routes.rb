Rails.application.routes.draw do

  resources :services
  root 'sessions#home'

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' =>'sessions#create'

  delete '/logout' => 'sessions#destroy'


  resources :hairdressers do 
    resources :customers, only: [:new, :create, :index]
  end
  resources :appointments do 
    resources :hairdressers, only: [:new, :create, :index, :destroy] #shallow routing - only nesting what is needed 
  end
  resources :customers do
    resources :appointments, only: [:new, :create, :index, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
