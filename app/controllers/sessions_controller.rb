class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      #binding.pry
      redirect_to(controller: 'sessions', action: 'new') 
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
