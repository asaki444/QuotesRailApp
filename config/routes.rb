Rails.application.routes.draw do
  resources :category_quotes
  resources :categories
  root to: "static_pages#home"
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 
  resources :quotes do 
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
