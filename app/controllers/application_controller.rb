class ApplicationController < ActionController::Base
  protect_from_forgery

  private
    def current_user
      #session[:user_id]
      warden.user
    end
    helper_method :current_user

    def warden
      request.env['warden']
    end

end
