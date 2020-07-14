module ApplicationHelper

  def markdown(content)
    html=Kramdown::Document.new(content, parse_block_html: true, syntax_highlighter: :rouge, :input => 'Kramdown').to_html.to_s
    html=html.gsub("<p>", "")
    html=html.gsub("</p>", "")
    return html.html_safe
  end

end
