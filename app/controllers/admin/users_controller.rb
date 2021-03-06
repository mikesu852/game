class Admin::UsersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required

  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def to_admin
    @user = User.find(params[:id])
    @user.to_admin

    redirect_to admin_users_path
  end

  def to_normal
    @user = User.find(params[:id])
    @user.to_normal

    redirect_to admin_users_path
  end

  def destroy                       # destroy 要拼對
    @user = User.find(params[:id])  # 指定要刪除的 user
    @user.destroy                   # 刪除

    redirect_to admin_users_path    # 導回管理權限頁面
  end
end
