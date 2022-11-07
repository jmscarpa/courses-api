Rails.application.routes.draw do
  scope defaults: { format: :json } do
    root to: "status#index"
    resources :categories, only: [:index, :show, :create]
    resources :recommendations, only: [:index, :show, :destroy] do
      resources :comments, only: [:create]
    end
  end
end


