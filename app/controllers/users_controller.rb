# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Bienvenue !"
      redirect_to @user
    else
      @title = "Sign up"
      render 'new'
    end
  end
  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
end
