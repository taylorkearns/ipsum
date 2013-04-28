require_relative 'haml_paragraph.rb'
require_relative 'html_paragraph.rb'

class Ipsum
  def paragraph(options={})
    Paragraph.new(options).paragraph
  end
  alias :p :paragraph

  def html_paragraph(options={})
    HtmlParagraph.new(options).html
  end
  alias :html_p :html_paragraph

  def haml_paragraph(options={})
    HamlParagraph.new(options).haml
  end
  alias :haml_p :haml_paragraph
end
