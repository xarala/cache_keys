
require "cache_keys/version"
require 'active_record'

module CacheKeys
  
  def cache_keys(keys)
    keys.each do |key|
      define_method "#{key}_cache_key" do
        "#{key}"
      end
    end
  end
  
end


ActiveRecord::Base.extend CacheKeys
