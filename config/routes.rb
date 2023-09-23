Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :index, :show, :update]
    resources :posts, only: [:create, :index, :show, :update]
    resource :session, only: [:show, :create, :destroy]
  end

  post 'api/test', to: 'application#test'

  get '*path', to: "static_pages#frontend_index"
end