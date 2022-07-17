Rails.application.routes.draw do
  resources :salary_usecases
  resources :accounts
  resources :policies
  resources :gideon_tests
  resources :media_uploads
  resources :onesimus_tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  post '/salary_usecases/:id', to: 'salary_usecases#process_payment', as: 'process_payment'

end
