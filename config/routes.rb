Rails.application.routes.draw do

  # 以下の7つのパスを削除してください
  get '/notes/new' => "notes#new"
  post '/notes' => "notes#create"
  get '/notes' => "notes#index"
  get '/notes/:id' => "notes#show", as: 'note'
  patch  '/notes/:id' =>"notes#update", as: 'update_note'
  get  '/notes/:id/edit' =>"notes#edit", as: 'edit_note'
  delete '/notes/:id' => 'notes#destroy', as: 'destroy_note'

  # 「resources」を用いてnoteのルーティングを設定してください

  root 'home#top'
  get '/about' => 'home#about'
end
