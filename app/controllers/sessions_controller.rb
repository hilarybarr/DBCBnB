class SessionsController < ApplicationController
  def new
  end

	def destroy
    if session[:user_id]
      session[:user_id] = nil
      redirect_to(root_path)
    end
  end

  def create
    user = User.where(username: params[:signin][:username]).first

    if user && user.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully."
      # redirect_to some_path
    else
      flash[:notice] = "Sorry, those credentials are incorrect."
      redirect_to signin_path
    end
  end
end
