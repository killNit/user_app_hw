class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(users_params)
    if @user.save
      redirect_to users_path
    else render new_user_path
    end
  end

  def edit
    @user = User.find(users_params)
  end

  def delete
    @user = User.destroy 
    redirect_to users_path
  end

  def update
    @user = User.create 
  end


  private

  def users_params
    params.require(:user).permit(:first_name, :last_name, :hair_color, :eye_color, :gender, :alive)
  end
end
