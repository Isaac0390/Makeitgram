Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  get  'posts',     to: 'posts#index'
  get  'posts/new'
  post 'posts',     to: 'posts#create'
  get  'posts/:id', to: 'posts#show', as: 'posts_show'

  get  'users/:username', to: 'users#profile', as: 'profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end