module Admin
  module ApplicationHelper

    def link_to_with_icon(icon_name, text, url, options = {})
      options[:class] = (options[:class].to_s + " icon_link with-tip #{icon_name}").strip
      options[:class] += ' no-text' if options[:no_text]
      options[:title] = text if options[:no_text]
      text = options[:no_text] ? '' : raw("<span class='text'>#{text}</span>")
      options.delete(:no_text)
      link_to(text, url, options)
    end

    def button(text, icon_name = nil, button_type = 'submit', options={})
      button_tag(text, options.merge(:type => button_type, :class => "#{icon_name} button"))
    end
  end
end