class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def index
<<<<<<< HEAD
    @users = User.all
  end
  
=======
      @users = User.all
  end

>>>>>>> displayer-users-ver3
  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to the WhatToEat App"
  		redirect_to :controller => 'sessions', :action => 'new'
  	else
  		render 'new'
  	end
  end

  private

  	def user_params
  		params.require(:user).permit(:name, :password, :password_confirmation)
  	end	

end
