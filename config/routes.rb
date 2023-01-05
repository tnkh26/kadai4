Rails.application.routes.draw do
  get "home/about"=>"homes#about"
  post 'users/:id/edit' => 'users#show'
  resources :users, only:[:index, :edit, :post]
  resources :books 
  root :to =>"homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
