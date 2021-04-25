class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), notice: "ユーザが作成されました！"
    else
      render :new
    end
  end
  
  def show
    @users = User.find(params[:id])
    redirect_to picture_blogs_path, notice: "不正操作を記録しました。" unless current_user.id == @users.id
  end
  

  private

  def params_user
    params.require(:user).permit(:name, :email, :password,:password_confirmation)
  end
  
end
