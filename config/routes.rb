Rails.application.routes.draw do
  devise_for :users
  resources :roles
  root 'companies#index'
  resources :locations
  resources :jobs
  resources :job_types
  resources :positions
  resources :technologies
  resources :experience_types
  resources :companies
  resources :cities
  get 'dashboard/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
