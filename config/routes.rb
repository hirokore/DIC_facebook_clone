Rails.application.routes.draw do
  get 'sessions/new'
  get 'picture_blogs/new'
  get 'picture_blogs/index'
  get 'picture_blogs/show'
  get 'picture_blogs/edit'
  get 'picture_blogs/confirm'
  root 'users#new'
  resources :users
end
