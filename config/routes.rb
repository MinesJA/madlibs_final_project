Rails.application.routes.draw do
  root 'welcome#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :completed_stories
  resources :templates
  resources :users


end
