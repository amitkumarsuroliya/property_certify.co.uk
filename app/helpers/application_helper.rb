module ApplicationHelper
	def nav_link(link_text, link_path)
  	class_name = current_page?(link_path) ? 'active' : nil

  	content_tag(:li, :class => class_name) do
    	link_to link_text, link_path
  	end
	end

	def testimonial(text, name)
		class_name = cycle('pull-right', 'pull-left')
		content_tag(:blockquote, :class => class_name) do
			content_tag(:p, text) +
			content_tag(:small, name)
		end
	end
end
