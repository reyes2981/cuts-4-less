Rails.application.routes.draw do
  resources :hairdressers
  resources :appointments
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
