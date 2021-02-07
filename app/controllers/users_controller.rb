class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @users = User.create(user_params)
  end

  def new
    @users = User.new
  end

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile, :occupation, :position)
  end
end
