module ApplicationHelper
	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink=> true, :space_after_headers => true)
		markdown.render(text).html_safe
	end
	def selected_if_section?(s); (@current_section || nil) == s ? 'current' : ''; end
end
