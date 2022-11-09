class SessionsController < ApplicationController
  def new
    #@user = User.new
  end

  def create
    #@user = User.create(user_params)
    #if @user.save
      #session[:user_id] = @user.id
      #redirect_to root_path, notice: "Signed up!"
    #else
      #render :new
    #end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end

