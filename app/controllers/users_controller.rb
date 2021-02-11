class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def following
    @title = 'Following'
    @user = User.find(params[:id])
    @users = @user.following
    render 'users/follow_show'
  end

  def followers
    @title = 'Followers'
    @user = User.find(params[:id])
    @users = @user.followers
    render 'follow_show'
  end
end
