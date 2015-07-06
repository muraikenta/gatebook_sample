Rails.application.routes.draw do

  devise_for :users
  
  # onlyを使って、不要なルーティングを生成しないようにしてください
  resources :users

  resources :notes

  root 'home#top'
  get '/about' => 'home#about'
end
