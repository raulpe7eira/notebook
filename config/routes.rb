Rails.application.routes.draw do
  root 'home#index'
  resources :kinds, :except => :show
  resources :contacts, :except => :show
end
