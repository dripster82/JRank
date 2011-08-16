
class Jrank::SearchController < ApplicationController

	unloadable

	def index
	end

	def show
	  @jrank = Jrank::Search.new.find(@query, @start ||= 0, @limit ||= 10)
	end
end