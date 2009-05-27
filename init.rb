require File.dirname(__FILE__) + "/lib/active_record/concerned_with"
ActiveRecord::Base.send :include, ActiveRecord::ConcernedWith
