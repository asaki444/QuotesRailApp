Rails.application.routes.draw do
  root_to: 'static_pages/home'
  devise_for :users
  resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
