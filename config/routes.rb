Rails.application.routes.draw do
  scope defaults: { format: :json } do
    resources :categories, only: [:index]
    resources :recommendations, only: [:index, :show]
  end
end
