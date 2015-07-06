Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  # onlyを用いて、生成されるルーティングを指定してください
  resources :notes

  root 'home#top'
  get '/about' => 'home#about'
end
