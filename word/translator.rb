module Word
  class Translator
    include Word::Regex

    def initialize(word, splliter: Word::Splitter)
      @word     = word
      @splliter = splliter.new(word: word)
    end

    def translate
      return translate_word.capitalize if word_has_capital_letter?

      translate_word
    end

    private

    attr_reader :word, :splliter

    def translate_word
      return word if word_has_no_letters?

      word_ponctuation = word_end_with_punctuation? ? word[-1] : ''

      return "#{word}yay#{word_ponctuation}" if word_has_no_consonants?

      preffix, stem = splliter.split

      "#{stem}#{preffix}ay#{word_ponctuation}"
    end
  end
end
