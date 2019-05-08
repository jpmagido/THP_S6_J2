Rails.application.routes.draw do

  get 'static_pages/index'
  get 'static_pages/secret'
  get 'static/index'
  resources :static_pages
root to: "static_pages#index"

  devise_for :users

  resources :events
  resources :invitations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
