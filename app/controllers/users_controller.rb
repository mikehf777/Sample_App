class UsersController < ApplicationController
  def new
  @titulo = "Sign up"
  @user = User.new
  end
  def show 
    @user = User.find(params[:id])
    @titulo=@user.name
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @titulo= "Sign up"
      render 'new'
    end
  end
end
