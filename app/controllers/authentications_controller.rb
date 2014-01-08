class AuthenticationsController < ApplicationController
  def destroy
    authentication = current_user.authentications.find(params[:id])
    authentication.destroy
    redirect_to profile_path
  end
end
