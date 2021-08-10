Rails.application.routes.draw do
  resources :weights
  resources :medicals
  resources :litters
  resources :kittens
  resources :fosters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
