Rails.application.routes.draw do
  root 'picture_blogs#index'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :picture_blogs do
    collection do
      post :confirm
    end
  end
end
