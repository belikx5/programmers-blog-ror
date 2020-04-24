Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root 'posts#index'
  get '/tagged', to: "posts#tagged", as: :tagged
  get 'about' => 'pages#about' 
  get 'account' => 'pages#account'

end
