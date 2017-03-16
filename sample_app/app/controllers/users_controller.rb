class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end


  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to user_url(@user)
    else
      render 'new'
    end
  end

end
