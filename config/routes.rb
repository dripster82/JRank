 Rails.application.routes.draw do |map|
   get "search?q=:query(&start=:start)(&limit=:limit)", :controller => 'jrank/search', :action => "show"
   get "search", :controller => 'jrank/search', :action => "index"
 end