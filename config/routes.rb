Rails.application.routes.draw do
  resources :items
  resources :products
  resources :love_days
  resources :users
  put "/users/:id/destroy_avatar", to: "users#destroy_avatar", as: "destroy_avatar"

  resources :items
  resources :item_photos
end
