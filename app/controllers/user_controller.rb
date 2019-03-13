class UserController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    @user = User.new(set_params)
    if @user.save
      redirect_to 'top'
    else
      render 'new'
    end
  end
  
  private

  def 
end
