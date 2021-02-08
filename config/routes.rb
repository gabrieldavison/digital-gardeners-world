Rails.application.routes.draw do
  get 'resources/index'
  get 'resources/new'
  get 'resources/create'
  root "websites#index"
  resources :websites
  resources :resources
end
