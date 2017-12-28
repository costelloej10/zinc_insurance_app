Rails.application.routes.draw do
  resources :products, only: :show
  root "products#index"
  match '*a', to: 'products#index', via: %i( get post put )
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
