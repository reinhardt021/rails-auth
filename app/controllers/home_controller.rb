class HomeController < ApplicationController
  def index
    #puts request.env.inspect
    #puts env['warden']
    if !request.env['warden'].user then
    #if !session[:user_id] then
      redirect_to register_url
    end
  end
end
