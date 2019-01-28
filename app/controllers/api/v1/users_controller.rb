class Api::V1::UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    render json: @user
  end

  def create
    user = User.new user_params
    if user.save
      render json: user, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    if user.save
      render json: user, status: 200
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    render(json: { errors: 'Not found' }, status: 404) && return if user.blank?
    user.destroy
    render json: { result: 'success' }, status: 200
  end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
