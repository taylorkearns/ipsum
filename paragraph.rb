require_relative 'text.rb'

class Paragraph
  attr_reader :min_sentences, :max_sentences

  def initialize(options={})
    @min_sentences = options[:min_sentences] || 5
    @max_sentences = options[:max_sentences] || 10
  end

  def text
    sentences.first(length).join('. ') + '.'
  end

  private

  def length
    rand min_sentences..max_sentences
  end

  def sentences
    Text.new.sentences
  end
end
