module Jrank::SearchHelper
	def html_render(str)
		str.gsub('&amp;', '&').gsub('&lt;', '<').gsub('&gt;', '>').html_safe
	end
end