Rails.application.routes.draw do
  # resources :products
  # resources :order_items
  # resources :categories
  # resources :admins
  # resources :users
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: 'categories#index'
    resources :categories, only: [:index] do
      resources :products, only: [:index]
  end
  
   root to: 'welcome#show'

   get '/cart', to: 'order_items#index'
   resources :order_items, path: '/cart/items'
   
   get '/cart/checkout', to: 'orders#new', as: :checkout
   patch '/cart/checkout', to: 'orders#create'
end