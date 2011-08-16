 Rails.application.routes.draw do |map|
	match "search", :controller => 'jrank/search', :action => "index", :as => "jrank_search"
 end