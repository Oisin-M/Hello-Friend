module ApplicationHelper

  def markdown(content)
    return Kramdown::Document.new(content, parse_block_html: true, syntax_highlighter: :rouge, :input => 'Kramdown').to_html.html_safe
  end

end
