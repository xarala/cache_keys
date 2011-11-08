
require "cache_keys/version"
require 'active_record'

module CacheKeys
  
  def cache_keys(keys)
    
    if keys.empty?
      raise ArgumentError, "you must provide an array of keys for cache keys" 
    end
    
    keys.each do |key|
      define_method "#{key}_cache_key" do
        "#{key}-#{self.cache_key}"
      end
    end
    
  end
  
end


ActiveRecord::Base.extend CacheKeys
