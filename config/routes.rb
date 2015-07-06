Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes

  root 'home#top'
  get '/about' => 'home#about'
end
