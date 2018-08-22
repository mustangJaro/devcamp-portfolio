class TopicsController < ApplicationController
	layout "blog"

  def index
  	@topics = Topic.all
  	@page_title = "Blogs by Topic"
  end

end
