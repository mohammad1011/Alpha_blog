
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  root 'application#hellomethod'
Rails.application.routes.draw do
  resources :users
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  get 'signup', to: 'users#new'
resources :users, except: [:new]

get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
end
