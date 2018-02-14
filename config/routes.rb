Rails.application.routes.draw do
  root 'welcome#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :completed_stories
  resources :templates
  resources :users

  get '/categories', to: 'templates#categoryindex', as: 'categories'
  get '/categories/:category', to: 'templates#categoryshow', as: 'category'
  patch '/completed_stories/:id/rate', to: 'completed_stories#rate'
end
