 Rails.application.routes.draw do |map|
   get "search?q=:query(&start=:start)(&limit=:limit)", :controller => Jrank::SearchController, :action => "show"
   get "search", :controller => Jrank::SearchController, :action => "index"
 end