module ApplicationHelper
  def show_notice
  	if flash[:notice]
  	  raws '<div id="notice">'+flash[:notice]+'</div>'
  	end
  end
end
