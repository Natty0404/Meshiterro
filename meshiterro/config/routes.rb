Rails.application.routes.draw do
  # devise_for :post_images
  root to: "homes#top"
  devise_for :users

  resources :post_images, only: [:new, :index, :show]

  get '/homes/about' => 'homes#about', as: 'about'
end