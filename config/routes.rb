Rails.application.routes.draw do
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :categories, only: [:index]
    resources :recommendations, only: [:index, :show, :create, :update, :destroy]
  end
end
