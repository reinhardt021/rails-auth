class SessionsController < ApplicationController

  def destroy
    #session[:user_id] = nil
    warden.logout
    redirect_to root_path
  end

end

