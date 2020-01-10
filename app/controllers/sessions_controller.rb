class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to(controller: 'sessions', action: 'new') 
      #remember line above
    else
      session[:name] = params[:name]
      
      redirect_to '/'
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
    redirect_to '/'
  end
end
