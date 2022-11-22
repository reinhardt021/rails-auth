class SessionsController < ApplicationController

  def destroy
    warden.logout
    redirect_to root_path
  end

end

