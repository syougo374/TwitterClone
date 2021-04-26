Rails.application.routes.draw do
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  root 'posts#top'
  resources :posts do
    collection do 
      post :confirm
      get :top
    end
  end
end
