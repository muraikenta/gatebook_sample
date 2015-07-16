Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  post '/like/:note_id' => 'likes#like', as: 'like'
  delete '/unlike/:note_id' => 'likes#unlike', as: 'unlike'

  root 'home#top'
  get '/about' => 'home#about'
end
