Rails.application.routes.draw do
  get 'notes/new'

  root 'home#top'
  get 'about' => 'home#about'
  
end
