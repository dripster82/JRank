require 'xml-object'
require 'open-uri'
module Jrank
  module Routing
	module MapperExtensions
      def jrank
        @set.add_route("/search", {:controller => "jrank_controller", :action => "index"})
        @set.add_route("/search?q=:query(&start=:start)(&limit=:limit)", {:controller => "jrank_controller", :action => "show"})
      end
    end
  end
end

ActionController::Routing::RouteSet::Mapper.send :include, Jrank::Routing::MapperExtensions