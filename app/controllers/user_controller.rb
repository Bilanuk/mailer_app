class UserController < ApplicationController
  def new
    @users= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render plain: "bruh"
      # render :new
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
