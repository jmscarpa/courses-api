class RegistrationsController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render json: {
        name: user.name,
        email: user.email,
        picture_url: user.picture_url,
        api_token: user.api_key
      }, status: 201
    else
      render json: { error: user.errors.full_messages.first }, status: 422
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

end