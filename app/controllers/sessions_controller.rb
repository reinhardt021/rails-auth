class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # TODO: find user by email
    # if user does NOT exist then error out
    # if user exists then check if password is good
    # if authenticated then go to home page
    # if BAD password then error out
    #@user = User.new(user_params)
    #if @user.save
      #warden.set_user @user
      #redirect_to root_path, notice: "Signed up!"
    #else
      #render :new
    #end
  end


  def destroy
    warden.logout
    redirect_to root_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :password)
    end
end

