module ApplicationHelper
  def show_notice
  	if flash[:notice]
  	  concat(raw '<div id="notice" class="alert alert-success">'+flash[:notice]+'</div>')
  	end
  	if flash[:alert]
  	  concat(raw '<div id="notice" class="alert alert-error">'+flash[:alert]+'</div>')
  	end
  end
end
