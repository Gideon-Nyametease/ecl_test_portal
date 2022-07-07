Rails.application.routes.draw do
  resources :accounts
  resources :policies
  resources :gideon_tests
  resources :media_uploads
  resources :onesimus_tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
end
