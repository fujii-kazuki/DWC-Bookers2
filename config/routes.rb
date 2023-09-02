Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :books, only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
