class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @current_user = User.find(session[:user_id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have signed up successfully."
      # redirect_to some_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :facebook_url)
  end

end

