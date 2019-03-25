Rails.application.routes.draw do
  resources :naps
  resources :diaper_entries
  resources :food_entries
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
