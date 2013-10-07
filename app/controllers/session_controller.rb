class SessionController < ApplicationController

  def login
    render layout: "application"
  end

  def postLogin
    #render json: params
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:email] = user.email
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "session/login"
    end
  end
end