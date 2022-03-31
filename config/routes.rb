Rails.application.routes.draw do
  resources :tweets
  devise_for :users
  root 'pages#home'
  resources :turmas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
