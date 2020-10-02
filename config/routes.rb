Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :pages
  resources :patients
  resources :doctors
  resources :facilities
  resources :administrators
  resources :ailments
  resources :sessions
  get '/sign_in', to: 'sessions#sign_in'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to:'sessions#destroy'
  get '/hallway', to: 'pages#hallway'
  get '/eye', to: 'pages#eye'
  get '/light', to: 'pages#light'
  get '/end', to: 'pages#end'
  get '/deceased', to: 'pages#deceased'
end
