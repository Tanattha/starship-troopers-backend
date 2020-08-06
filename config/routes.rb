Rails.application.routes.draw do
  resources :scores
  resources :users
  get 'topten', to: 'scores#topten'
end