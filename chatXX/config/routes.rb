Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only:[:show, :edit, :update, :index,]
  get 'chat/:id' => 'chats#show', as: 'chat'
  resources :chats, only: [:create]
end
