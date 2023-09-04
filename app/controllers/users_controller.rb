class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @user = current_user
    @book = Book.new
    @books = User.find(params[:id]).books
  end

  def edit
    @user = current_user
  end

  def update
    current_user.update(user_params)
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
