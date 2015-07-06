Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  post '/like/:notes_id' => 'likes#like', as: 'like'
  post '/dislike/:note_id' => 'likes#dislike', as: 'dislike'

  root 'home#top'
  get '/about' => 'home#about'
end
