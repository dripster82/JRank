module Jrank
  class SearchController < ApplicationController

  	unloadable

	def index
	end
	
	def show
	  @jrank = JRank::Search.new.find(@query, @start ||= 0, @limit ||= 10)
	end
  end
end