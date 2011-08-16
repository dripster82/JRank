require 'xml-object'
require 'open-uri'
module Jrank
  class Search
	
	def initialize
		
	end
	
	def find(query, start = 0, limit = 10)
		XMLObject.new(open("http://www.jrank.org/api/search/v2.xml?key=420261e39acb932299ec5098e009b4828f9cefa3&q=#{URI.escape(query)}&start=#{URI.escape(start)}&limit=#{URI.escape(limit)}"))
	end
	
  end
end