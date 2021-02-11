
Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    resources :posts, only: %i[create destroy index new edit show]
  end

  resources :users do
    resources :posts
  end
  resources :relationships, only: %i[create destroy]
  resources :users do
    member { get :following, :followers }
  end
  root to: "home#index"
end
