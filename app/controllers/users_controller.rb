class UserController < ApplicationController

  before_filter :auth_user
  
  def new 
    @user = User.new
  end

  def create
    @user = User.new(user_attrs)
    if @user.save
      flash[:notice] = "注册成功，请登录"
      redirect_to new_session_path
    else
      render action: :new
  end

  def checks
    @checks = current_user.checks.page(params[:page] || 1).per_page(params[:per_page] || 7)
      .order("id desc")
  end

  private
  def user_attrs
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
