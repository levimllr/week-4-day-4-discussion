Rails.application.routes.draw do
  resources :smoothie_ingredients
  resources :ingredients
  resources :smoothies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
