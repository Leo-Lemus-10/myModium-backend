Rails.application.routes.draw do
  get 'gen/s'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
  resources :users, only: [:index, :show, :create, :destroy, :update]
  resources :platforms, only: [:index, :show]
  resources :media, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :categories, only: [:index, :show]
end
