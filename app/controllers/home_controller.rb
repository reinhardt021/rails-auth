class HomeController < ApplicationController
  def index
    if !session[:user_id] then
      redirect_to register_url
    end
  end
end
