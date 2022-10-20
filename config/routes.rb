Rails.application.routes.draw do
  devise_for :users
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :categories, only: [:index]
    resources :recommendations, only: [:index, :show, :create, :update, :destroy] do
      resources :comments, only: :create
    end
    resources :sessions, only: [:create]
    resources :registrations, only: [:create]
  end
end
