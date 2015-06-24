Rails.application.routes.draw do

  resources :notes

  root 'home#top'
  get '/about' => 'home#about'
end
