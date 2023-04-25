class SentenceTranslator
 def initialize(sentence:)
    @sentence = sentence
  end

  def translate
    words = sentence.split(' ')

    translated_words = words.map do |word|
      Word::Translator.new(word).translate
    end

    translated_words.join(' ')
  end

  private

  attr_reader :sentence
end
