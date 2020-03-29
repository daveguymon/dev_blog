Rails.application.routes.draw do
  devise_for :users
  root "posts#index"

  resources :posts
  resources :users do
    post :is_admin, on: :member
  end
end
