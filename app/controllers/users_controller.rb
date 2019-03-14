class UsersController < ApplicationController

  def new
    if params[:back]
      @user = User.new(user_params)
    else
      @user = User.new()
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    else
      render 'new'
    end
  end

  def confirm
    @user = User.new(user_params)
    render:new if @user.invalid?
  end

  def destroy
    @user.destroy
  end

  private

  def  user_params
    params.require(:user).permit(:name , :email , :password , :password_confirmation)
  end
end
