Rails.application.routes.draw do

	root 'static_pages#homepage'

  get 'pages/weather'

  get 'static_pages/homepage'

  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/signup', to: 'users#new'

  get '/homepage', to: 'static_pages#homepage'

  get '/weather', to: 'pages#weather'
  post '/weather', to: 'pages#create'


  resources :users
end
