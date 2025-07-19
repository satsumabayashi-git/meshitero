Rails.application.routes.draw do

  # get 'users/show'
  # get 'users/edit'

  root to: "homes#top"
  devise_for :users
  get 'homes/about' => 'homes#about', as: 'about'

  resources :post_images, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :edit, :update]

end
