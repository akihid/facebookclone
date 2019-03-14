class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email:params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # ログイン
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      # トップに
      flash[:danger] = 'ログイン失敗'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウト'
    redirect_to new_session_path
  end
end
