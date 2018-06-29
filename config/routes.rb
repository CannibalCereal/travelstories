Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/about' => 'pages#about', as: :about
  resources 'signups'
  get '/thanks' => 'pages#thanks', as: :thanks
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get '/vip' => 'pages#easter_egg'
end
