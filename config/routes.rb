Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show', as: 'list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lists#index'
end
