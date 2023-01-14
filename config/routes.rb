Rails.application.routes.draw do
  devise_for :users
  get "home/about"=>"homes#about"
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  root :to =>"homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
