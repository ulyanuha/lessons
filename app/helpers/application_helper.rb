module ApplicationHelper
  def show_notice
  	if flash[:notice]
  	  raw '<div id="notice">'+flash[:notice]+'</div>'
  	end
  end
end
