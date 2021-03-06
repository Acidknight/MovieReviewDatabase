Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#home'
  resources :users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  get '/login' => 'sessions#new'
  post '/login' => "sessions#create"
  delete 'logout' => 'sessions#destroy'
  get '/edit' => "movies#update"
  get '/auth/:provider/callback' => 'sessions#omniauth'

  resources :reviews
  
  resources :movies do
    resources :reviews
  end

  resources :users do
    resources :reviews, only: [:new, :create, :index]
  end
end
