class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
  end

  def contact
  end

  def tech_news
  	# @tweets = SocialTool.twitter_search
  	@tweets = ["tweet1", "tweet2", "tweet3", "tweet4", "tweet5", "tweet6"]
  end
end
