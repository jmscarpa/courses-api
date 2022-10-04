class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
  end
  
  def show
    @recommendation = Recommendation.find(params[:id])
  end

  def create
    @recommendation = Recommendation.new(recommendation_params)
    if @recommendation.save
      head :created
    else
      render json: { error: @recommendation.errors.full_messages.first }, status: 422
    end
  end

  def update
    @recommendation = Recommendation.find(params[:id])
    if @recommendation.update(recommendation_params)
      head :ok
    else
      render json: { error: @recommendation.errors.full_messages.first }, status: 422
    end
  end

  def destroy
    @recommendation = Recommendation.find(params[:id])
    @recommendation.destroy
    head :ok
  end

  def recommendation_params
    params.permit(:name, :description, :category_id, :image_url)
  end


end