
class Jrank::SearchController < ApplicationController

	unloadable

	def index
		if !params[:query].blank?
			@jrank = Jrank::Search.new.find(params[:query], params[:start] ||= 0, params[:limit] ||= 10)
		end
	end
end