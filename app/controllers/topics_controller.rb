class TopicsController < ApplicationController
	before_action :set_sidebar_topics
	layout "blog"

  def index
  	@topics = Topic.all
  	@page_title = "Blogs by Topic"
  end

  private
  
  def set_sidebar_topics
  	@side_bar_topics = Topic.with_blogs
  end
end
