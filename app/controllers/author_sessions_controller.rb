class AuthorSessionsController < ApplicationController

  def new
  	@author = Author.new
  end

end