require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  test "should not save Blog without title, body, or topic_id" do 
    blog = Blog.new
    assert_not blog.save, "Saved the blog without a title, body, or topic_id"
  end

  test "should not save Blog without title or topic_id" do
    blog = Blog.new
    blog.body = "test body"
    assert_not blog.save, "Saved the blog without a title or topic_id"
  end

  test "should not save Blog without topic_id" do
    blog = Blog.new
    blog.body = "test body"
    blog.title = "test title"
    assert_not blog.save, "Saved the blog without a topic_id"
  end

  test "should save blog with all valid values" do
    blog = Blog.new
    blog.body = "test body"
    blog.title = "test title"
    blog.topic_id = topics(:rails).id
    assert blog.save, "Unable to save the blog with valid values"
  end
end
