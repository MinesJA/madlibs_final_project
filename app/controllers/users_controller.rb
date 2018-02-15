class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    #User signup
    @user = User.new(user_params)

    if @user.valid?
      return redirect_to controller: 'users', action: 'new' unless @user.save
      session[:user_id] = @user.id
      redirect_to controller: 'welcome', action: 'home'
    else
      render :new
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render :layout => "application"
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :avatar)
  end

end
