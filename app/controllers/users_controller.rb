class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to "/", notice: "ユーザーが保存されました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
