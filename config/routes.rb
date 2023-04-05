Rails.application.routes.draw do

  get 'login', to: 'sessions#new'

  root 'chatroom#index'
end
