class HomeController < ApplicationController
  def show
    @title = "Page Title"
    @layout_title = "Layout title"
  end
end
