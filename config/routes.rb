Rails.application.routes.draw do
  resources :category_quotes
  resources :categories
  root to: "static_pages#home"
  devise_for :users
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
