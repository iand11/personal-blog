class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to root_path
    else
      @errors = ["Incorrect"]
      render 'new'
    end 
  end

  def destroy
    logout
    redirect_to root_path
  end
end
