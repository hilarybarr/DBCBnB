class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    #@current_user = User.find(session[:user_id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have signed up successfully."
      redirect_to housing_listings_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :facebook_url, :gender)
  end

end

