module ActiveRecord
  module ConcernedWith

    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods

      def concerned_with *concerns
        concerns.each { |concern|
          require_dependency "#{name.downcase}/#{concern}"
          include "#{name}::#{concern.to_s.camelize}".constantize
        }
      end
      
    end
    
  end
end
