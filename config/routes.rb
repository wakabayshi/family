Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  resources :accounts 
  resources :doctors
  resources :periods
  resources :appointments do
    get "search", on: :collection
  end
  resource :session,only: [:create, :destroy]
  resources :logs
end
