class SessionController < ApplicationController

  def login
    render layout: "application"
  end

  def postLogin
    #render json: params
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:email] = user.email
      flash[:success] = "Successfully logged in."
      redirect_to root_url
    else
      flash[:error] = "Email or password is invalid."
      redirect_to :controller => 'session', :action => 'login'
    end
  end
end