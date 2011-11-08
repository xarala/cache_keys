require 'spec_helper'

describe "CacheKeys::Cache" do
  
  before(:each) do
    @post = Post.first
  end
  
  it "responds to cache_keys" do  
    @post.comments_cache_key.should eql("comments-#{@post.cache_key}")
    @post.tweets_cache_key.should eql("tweets-#{@post.cache_key}")
  end
  
end