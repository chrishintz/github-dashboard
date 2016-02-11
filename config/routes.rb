Rails.application.routes.draw do

  get "users/show", to: "users#show", as: :user
  get "users/data", to: "users#data"

  root to: "dashboards#index"
  get "auth/github/callback", to: "sessions#create"
  get "signout", to: "sessions#destroy", as: :signout

end
