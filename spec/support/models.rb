class Post < ActiveRecord::Base
    
    
    cache_keys [:comments, :tweets]
end