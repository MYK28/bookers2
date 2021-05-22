Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'

  resources :users, only:[:index, :create, :show, :edit, :update]
  resources :books, only:[:index, :create, :show, :edit, :destroy]
end
