class Api::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.new
    @user.id = params[:id]
    @user.email = params[:email]
    @user.save

    render json:@user
  end
end