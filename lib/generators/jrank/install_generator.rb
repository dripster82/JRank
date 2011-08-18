 require 'rails/generators'
module Jrank
	module Generators
		class InstallGenerator < Rails::Generators::Base
			source_root File.expand_path("../../templates", __FILE__)
			
			desc "Copies locale files to your application."
			
			def copy_stylesheet
				template "jrank.css", "public/stylesheets/jrank.css"
			end

			def copy_config
				template "jrank.yml", "config/jrank.yml"
			end
			
		end
	end
 end