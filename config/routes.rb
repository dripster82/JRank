 Rails.application.routes.draw do |map|
   resources :search, :controller => 'jrank/search', :only => [:index, :show]
 end