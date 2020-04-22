Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root 'posts#index'
  get '/tagged', to: "posts#tagged", as: :tagged
  get 'about' => 'pages#about' 
  get 'account' => 'pages#account'
  get 'it_posts' => 'posts#it_posts'
  get 'programming_posts' => 'posts#programming_posts'
  get 'studying_posts' => 'posts#studying_posts'
  get 'technologies_posts' => 'posts#technologies_posts'
  get 'gaming_posts' => 'posts#gaming_posts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
