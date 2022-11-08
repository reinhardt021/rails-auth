class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_stuff = user_params
    puts user_stuff.inspect
    @user = User.create(user_stuff)
    @user.email = 'test@test.com'
    puts @user.email
    puts @user.inspect
    if @user.save
      redirect_to root_path, notice: "Signed up!"
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
