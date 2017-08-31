class UsersController < ApplicationController
  def users
  end

  def index
      @users = User.all
  end
  

  def new
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def create
    @user = User.new(params.require(:user).permit(:id, :nom, :mot))
    @user.save
    redirect_to @user
  end

  def login
    @user = User.find(params[:id])

  end

  def show
    @user = User.find(params[:id])
  end

  
  
  
  
end
