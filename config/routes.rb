Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"
  resources :accounts 
  resources :doctors
  resources :periods
  resources :appointments do
    get "new2", on: :collection
    get "new3", on: :collection
    get "edit2", on: :member
    get "edit3", on: :member
  end
  resource :session,only: [:create, :destroy]
  resources :logs
  get '/search', to: 'searchs#search'
end
  
