Rails.application.routes.draw do
  get 'notes/new'
  post '/notes' => 'notes#create'
  get '/notes' => 'notes#index'
  # showアクションへのルーティングを設定してください

  root 'home#top'
  get 'about' => 'home#about'
  
end
