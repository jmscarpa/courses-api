class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end
  
  def show
    @recommendation = Recommendation.find(params[:id])
  end

  def destroy
    # Encontrar o registro
    recommendation = Recommendation.find(params[:id])
    # Tentar apagar
    if recommendation.destroy
      # Se der certo, respondo OK
      render json: {}
    else
      # Se der errado, respondo com o erro
      render json: { error: recommendation.errors }, status: 422
    end
  end

end