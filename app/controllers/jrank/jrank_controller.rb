 class JRankController < ApplicationController
	def index
	end
	
	def show
		@jrank = JRank::Search.new.find(@query, @start ||= 0, @limit ||= 10)
	end
 end