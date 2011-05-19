module ApplicationHelper
	def nav_link(text, controller, action="index") 
    link_to_unless_current text, 	:controller => controller, 
    								:action => action 
  end 
  
  def text_field_for(form, field, 
                     size=HTML_TEXT_FIELD_SIZE, 
                     maxlength=DB_STRING_MAX_LENGTH)
    label = content_tag("label", "#{field.humanize}:", :for => field)
    form_field = form.text_field field, :size => size, :maxlength => maxlength
    content_tag("div", "#{label} #{form_field}", :class => "form_row")
  end
end
