class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save!
      login!(@user)
      redirect_to user_url(@user)
    else
      redirect_to new_user_url
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    render :edit
    @user.update_attributes(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
