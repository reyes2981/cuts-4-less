Rails.application.routes.draw do

  root 'sessions#home'

  devise_for :customers, controllers: { omniauth_callbacks: 'customers/omniauth_callbacks' }
  devise_scope :admin do
    get 'customers/sign_in', to: 'customers/sessions#new', as: :new_customer_session
    get 'customers/sign_out', to: 'customers/sessions#destroy', as: :destroy_customer_session
  end

  get '/signup' => 'customers#new'
  post '/signup' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' =>'sessions#create'

  delete '/logout' => 'sessions#destroy'


  resources :customers do 
    resources :appointments, only: [:new, :create, :index, :show]
  end
  
  resources :appointments 
  




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
