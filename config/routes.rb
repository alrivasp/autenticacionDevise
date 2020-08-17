Rails.application.routes.draw do
  get 'admin/index'
  get 'users/edit/:id', to: 'admin#edit', as: 'edit_user'
  patch 'users/update/:id', to: 'admin#update', as: 'update_user'
  get 'my_stories',to: 'stories#my_stories'
  devise_for :users
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
