class SessionsController < ApplicationController
  def new
    @errors = []
    @user = User.new
  end

  def create
    @errors = []
    @user = User.authenticate(params[:email], params[:password])
    if @user then
      #session[:user_id] = @user.id
      warden.set_user @user
      redirect_to root_path
    else
      @errors << "Email or Password is invalid"
      render :new
    end
  end


  def destroy
    #session[:user_id] = nil
    warden.logout
    redirect_to root_path
  end

end

