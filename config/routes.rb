Rails.application.routes.draw do
  root "user#index"
  resources :articles, :user
end