Rails.application.routes.draw do
  root 'lists#index'

  get '/lists' => 'lists#index'

  get 'lists/new' => 'lists#new', as: 'new_list'

  post 'lists' => 'lists#create'

  get 'lists/:id' => 'lists#show', as: 'list'

  get 'lists/:id/update' => 'lists#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
