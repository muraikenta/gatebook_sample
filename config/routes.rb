Rails.application.routes.draw do

  devise_for :users

  # 以下のresourcesをmemberを用いて入れ子にし、like_notesアクションのルーティングを定義してください
  resources :users, only: [:index, :show, :edit, :update]
    
  
  resources :notes, only: [:show, :create, :edit, :update, :destroy]

  post '/like/:note_id' => 'likes#like', as: 'like'
  delete '/unlike/:note_id' => 'likes#unlike', as: 'unlike'

  root 'home#top'
  get '/about' => 'home#about'
end
