class AuthorSessionsController < ApplicationController

  def new
  	@author = Author.new
  end
  
  def create
    user = Author.authenticate(params[:author][:name], params[:author][:password])
    if user
      session[:user_id] = user.id
      redirect_to posts_url, :notice => 'Logged In!'
    else
      flash[:alert] = 'Invalid name or password'
      redirect_to :action => 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to signin_url, :notice => 'Logged Out'
  end

end