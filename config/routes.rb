Rails.application.routes.draw do
  get 'users/mew'
  root 'users#new'
end
