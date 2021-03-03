
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#  root 'application#hellomethod'
Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show , :index , :new , :create, :edit, :update]
end
