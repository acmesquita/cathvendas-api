Rails.application.routes.draw do
  resources :companies
  resources :balances
  resources :paymentings
  resources :deposits
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
