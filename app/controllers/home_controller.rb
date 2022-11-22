class HomeController < ApplicationController
  def index
    if !current_user then
      redirect_to register_url
    end
  end
end
