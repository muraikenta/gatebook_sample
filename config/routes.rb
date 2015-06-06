Rails.application.routes.draw do
  # 「get '/top'」の部分を「root」を用いて書き換えてください
  get '/top' => 'home#top'
  
  get '/about' => 'home#about'
  
end
