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
  end
end
