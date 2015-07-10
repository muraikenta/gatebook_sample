Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  # likeアクションへのルーティングを定義してください
  

  # dislikeアクションへのルーティングを定義してください。
  

  root 'home#top'
  get '/about' => 'home#about'
end
