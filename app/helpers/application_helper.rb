module ApplicationHelper

  def full_title(page_title)
    base_title = "Attractive Japan Travel"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def flash_messages(opts = {})
    opts[:ignore_types] = [:commerce_tracking].concat(Array(opts[:ignore_types]) || [])

    flash.each do |msg_type, text|
      unless opts[:ignore_types].include?(msg_type)
        concat(content_tag :div, text, class: "flash #{msg_type}")
      end
    end
    nil
  end
end