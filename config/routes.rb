Rails.application.routes.draw do
  root "articles#index"
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"
  resources :articles, :user
end
