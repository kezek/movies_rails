class Api::UsersController < ApplicationController

  doorkeeper_for :all

  #GET /api/users
  def index
    render json: User.all
  end

  #GET /api/users/:id
  def show
    render json: User.find(params[:id])
  end

  #POST   /api/users(.:format)
  def create
    @user = User.new
    @user.password = params[:password]
    @user.email = params[:email]
    @user.save

    render json:@user
  end

  #PUT /api/users/:id(.:format)
  def update
    @user = User.find(params[:id])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save

    render json:@user
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete

    render json:@user
  end
end