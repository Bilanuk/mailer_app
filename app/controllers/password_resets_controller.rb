class PasswordResetsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
    end

    redirect_to root_path

  end

  def edit
    @user = User.find_signed(params[:token], purpose: "password_reset")
  end

  def update
    @user = User.find_signed(params[:token], purpose: "password_reset")

    if @user.update(password_params)
      redirect_to new_session_path
    else
      render :edit
    end
  end

    private

    def password_params
      params.require(:user).permit(:password, :password_confirmation)
    end
end