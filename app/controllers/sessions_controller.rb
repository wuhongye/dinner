class SessionController < ApplicationController

  def new
    
  end

  def create

    @user = User.authenticate(params[:username], params[:password])
    if @user
      signin_user @user
      
      render json: {
        status: 'ok',
        msg: {
          redirect_url: root_path
        }
      }
    else
      render json: {
        status: 'error',
        msg: "用户名或密码不正确"
      }
    end
  end