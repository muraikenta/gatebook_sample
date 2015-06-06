Rails.application.routes.draw do
  get 'notes/new'
  post 'notes' => 'notes#create'
  # indexアクションのルーティングを設定してください
  

  root 'home#top'
  get 'about' => 'home#about'
  
end
