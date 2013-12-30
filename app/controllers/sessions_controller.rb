class SessionsController < ApplicationController
  def new
  end

  def create
    authentication = Authentication.from_omniauth(env["omniauth.auth"])
    user = authentication.user || authentication.create_user
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

end
