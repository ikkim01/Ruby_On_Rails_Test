Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #localhost:3000/posts
  # root 'posts#index'
  # get 'posts/index'
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]
end
