# -*- encoding : utf-8 -*-
class SessionsController < ApplicationController
  def new
     @title = "S'identifier"
     render 'new'
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Combinaison Email/Mot de passe invalide."
      @title = "S'identifier"
      render 'new'
    else
      sign_in user
      redirect_to user
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
