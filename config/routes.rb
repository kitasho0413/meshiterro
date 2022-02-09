Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get '/homes/about' => 'homes#about', as:'about'
  get resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
