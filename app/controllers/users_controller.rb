class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    User.create(first_name:)

  def edit
    @user = User.find(1)
  end

  def delete
    @user = User.destroy 
  end


  private

  def users_params
    params.require(:user).permit(:fisrt_name, :last_name, :hair_color, :eye_color, :gender, :alive)
  end
end
