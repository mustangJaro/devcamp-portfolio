class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body, :topic_id

  belongs_to :topic

  has_many :comments, dependent: :destroy

  def self.special_blogs
  	all
  end

  def self.featured_blogs
  	limit(2)
  end

  def self.all_paginated page
    page(page).per(5).order(created_at: :desc)
  end

  def self.published_paginated page
    published.all_paginated(page)
  end
end
