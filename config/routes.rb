Rails.application.routes.draw do

  get 'results/suggestion'

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
  get '/homepage2', to: 'static_pages#homepage2'

  get '/users', to: 'users#index'

  get '/app', to: 'pages#weather'
  post '/app', to: 'pages#create'

  get '/suggestions', to: 'results#suggestion'

  resources :users
end
