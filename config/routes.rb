Rails.application.routes.draw do
  root "user#index"
  delete "logout", to: "sessions#destroy"

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#update"

  resources :articles, :user, :sessions
end