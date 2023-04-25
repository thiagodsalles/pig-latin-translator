module Word
  class Splitter
    include Word::Regex

    def initialize(word:, splitter_regex: /([aeiouy].*)/)
      @word         = word
      @splited_word = word.split(splitter_regex)
    end

    def split = [preffix, stem]

    private

    attr_reader :word, :splited_word

    def preffix = splited_word[0]

    def stem
      return splited_word[1][0..-2] if word_end_with_punctuation? 
      
      splited_word[1]
    end
  end
end
