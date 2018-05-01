Rails.application.routes.draw do
  root 'jobs#index'
  resources :locations
  resources :jobs
  resources :job_types
  resources :positions
  resources :technologies
  resources :experience_types
  resources :companies
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
