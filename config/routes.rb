Rails.application.routes.draw do
  get '/notes/new' => 'notes#new'
  # notesコントローラのcreateアクションへのルーティングを設定してください
  

  root 'home#top'
  get '/about' => 'home#about'
  
end
