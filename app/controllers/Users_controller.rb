class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @action = "新規登録"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      flash[:alert] = "エラーが発生しました。#{@user.errors.full_messages}"
      render 'new'
    end
  end


  private
  def user_params
    params.require(:user).permit(:student_id, :name)
  end
end