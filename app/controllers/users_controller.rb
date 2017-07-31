class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
      @users = User.all
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to the WhatToEat App"
  		redirect_to :controller => 'sessions', :action => 'new'
  	else
  		render 'new'
  	end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :password, :password_confirmation)
  	end	

end
