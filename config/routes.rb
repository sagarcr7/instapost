Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
 	resources :posts do
 		resources :comments
 		resources :upvotes, only: :create
 		resources :downvotes, only: :create
	end
	resources :users, only: :show
end

