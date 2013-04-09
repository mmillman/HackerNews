HackerNews::Application.routes.draw do
  get "comments/show"

  resources :users do
    resources :posts, only: [:new, :index]
  end
  resource :session, only: [:create, :destroy, :new]

  resources :posts, only: [:index, :show, :new, :create]

  root to: 'posts#index'
end
