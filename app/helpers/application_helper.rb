module ApplicationHelper

	def selected_if_section?(s); (@current_section || nil) == s ? 'current' : ''; end

end
