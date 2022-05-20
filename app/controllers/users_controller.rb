class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(signup_strong_arameters)
    if @user.save
      log_in(@user)
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
  end

  private
  def signup_strong_arameters
    params.require(:user).permit(:name, :login_id, :password, :password_confirmation)
  end
end
