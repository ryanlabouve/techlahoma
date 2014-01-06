class SessionsController < ApplicationController
  protect_from_forgery :except => :create
  def new
  end

  def create
    Rails.logger.debug "omniauth.auth --------------"
    Rails.logger.debug env["omniauth.auth"]
    authentication = Authentication.from_omniauth(env["omniauth.auth"])
    user = authentication.user || authentication.create_user
    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def omniauth_failure
  end
end
