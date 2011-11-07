require 'cache_keys'

describe "CacheKeys::Cache" do
  
  it "responds with cache" do
    CacheKeys::Kash.cache.should eql('cache')
  end
  
end