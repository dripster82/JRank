require 'xml-object'
require 'open-uri'
module Jrank
  class Search
	
	def initialize
		
	end
	
	def find(query, start = "0", limit = "10")
		XMLObject.new(open("http://www.jrank.org/api/search/v2.xml?key=#{apikey}&q=#{URI.encode(query)}&start=#{URI.encode(start)}&limit=#{URI.encode(limit)}"))
	end

	def apikey
		if File.exists?("#{Rails.root}/config/jrank.yml")
			@apikey = (YAML.load_file("#{Rails.root}/config/jrank.yml")[Rails.env].symbolize_keys)[:jrank_apikey]
		end
		@apikey ||= ''
	end
  end
end