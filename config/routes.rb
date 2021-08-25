Rails.application.routes.draw do
  root "user#index"
  delete "logout", to: "sessions#destroy"
  resources :articles, :user, :sessions
end