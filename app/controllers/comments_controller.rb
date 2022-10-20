class CommentsController < ApplicationController

  before_action :authenticate!

  def create
    recommendation = Recommendation.find(params[:recommendation_id])
    @comment = recommendation.comments.create(comment_params)
    @comment.user = current_user
    render json: { error: @comment.errors.full_messages.first }, status: 422 unless @comment.save
  end
  
  def comment_params
    params.permit(:content)
  end


end