
class Jrank::SearchController < ApplicationController

	unloadable

	def index
	end

	def show
		@jrank = Jrank::Search.new.find(params[:query], params[:start] ||= 0, params[:limit] ||= 10)
	end
end