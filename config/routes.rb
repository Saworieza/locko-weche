Rails.application.routes.draw do
  resources :translations
  resources :words
  resources :languages
  resources :englishes
  devise_for :users
  root 'home#index'
end
