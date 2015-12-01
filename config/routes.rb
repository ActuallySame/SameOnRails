Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get "same/new", to: "same#new" 
  post "same", to: "same#create"
  post 'subscribe', to: "home#subscribe", as:'subscribe'
end
