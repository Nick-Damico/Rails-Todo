Rails.application.routes.draw do
  root 'lists#index'


resources :lists do
  resources :list_items
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
