class UsersController < ApplicationController
  
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to users_path
    else 
      render new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    if @user.update(users_params)
      redirect_to users_path
    else 
      render :edit
    end

  end


  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :hair_color, :eye_color, :gender, :alive)
  end

end
