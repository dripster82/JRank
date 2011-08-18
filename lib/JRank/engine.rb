
require 'rails'
require 'jrank/search'

module Jrank
	class Engine < Rails::Engine
		initializer "add stylesheet" do |app|
			app.middleware.use ::ActionDispatch::Static, "#{root}/public"
			ActionView::Helpers::AssetTagHelper.register_stylesheet_expansion :jrank => ["_jrank"]
		end
	end
end