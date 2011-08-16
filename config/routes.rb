 Rails.application.routes.draw do |map|
   get "search/:query(/start-:start)(/limit-:limit)", :controller => 'jranksearch', :action => "show"
   get "search", :controller => 'jranksearch', :action => "index"
 end