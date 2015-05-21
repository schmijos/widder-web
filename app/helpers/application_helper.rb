module ApplicationHelper
  def markdown(source_text)
    @md_parser ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @md_parser.render(source_text)
  end
end
