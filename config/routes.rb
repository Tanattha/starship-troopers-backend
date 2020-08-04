Rails.application.routes.draw do
  resources :scores
  resources :users
  get '/topfive', to: 'scores#topfive'
end