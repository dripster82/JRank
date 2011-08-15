Rails.application.routes.draw do |map|
	map.resources :search, :only => [ :index, :show ]
end