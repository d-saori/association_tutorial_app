Rails.application.routes.draw do
  # TOPページ指定
  root to: "messages#index"
  # get 'messages/index'
  # get 'messages/new'
  # get 'messages/create'
  resources :messages
  get 'users/index'
end
