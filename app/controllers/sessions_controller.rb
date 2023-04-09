class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if (user && user.authenticate(params[:session][:password]))
      session[:user_id] = user.id
      redirect_to root_path, notice: "You have successfully logged in"
    else
      flash[:alert] = "There was something wrong with your login information"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "You have successfully logged out"
  end
end
