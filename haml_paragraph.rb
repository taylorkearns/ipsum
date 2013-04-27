require_relative 'paragraph.rb'

class HamlParagraph
  attr_accessor :paragraph, :min_sentences, :max_sentences

  def initialize(options={})
    @paragraph = Paragraph.new(min_sentences: min_sentences, max_sentences: max_sentences).paragraph
    @min_sentences = options[:min_sentences] || 5
    @max_sentences = options[:max_sentences] || 10
  end

  def haml
    "%p= #{paragraph}"
  end
end
