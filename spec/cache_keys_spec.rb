require 'spec_helper'

describe "CacheKeys::Cache" do
  
  it "responds to cache_keys" do  
    Post.first.comments_cache_key.should eql('comments')
    Post.first.tweets_cache_key.should eql('tweets')
  end
  
end