Rails.application.routes.draw do
  resources :users
  root 'posts#top'
  resources :posts do
    collection do 
      post :confirm
      get :top
    end
  end
end
