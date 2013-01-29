class AuthorsController < ApplicationController
  def index
    @authors = Author.order('name ASC').all
  end

  def new
  	@author = Author.new
  end

  def edit
  	@author = Author.find(params[:id])
  end

  def create
  	@author = Author.new(params[:author])
  	if @author.save
	  redirect_to authors_path, :notice => 'Author was successfully created'
  	else
  	  render :action => 'new'
  	end
  end

  def update
  	@author = Author.find(params[:id])
  	if @author.update_attributes(params[:author])
	  redirect_to authors_path, :notice => 'Author was successfully updated'
  	else
  	  render :action => 'edit'
  	end
  end
end