class SessionController < ApplicationController
  def login
    render json: params
  end
end