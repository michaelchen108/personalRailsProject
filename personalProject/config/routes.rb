Rails.application.routes.draw do
	
  get 'tags/:tag', to: 'posts#index', as: :tag
  devise_for :users
  resources :posts
  resources :users
  resources :tag
  root "posts#index"

end
