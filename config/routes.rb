Rails.application.routes.draw do

  # Log In
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'chatroom#index'
end
