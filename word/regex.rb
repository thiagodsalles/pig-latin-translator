module Word
  module Regex
    def word_has_no_letters? = /^[^a-z]*$/i.match?(word)

    def word_has_capital_letter? = /[[:upper:]]/.match?(word)
  
    def word_has_no_consonants? = /^[aeiouy]*$/i.match?(word)
  
    def word_end_with_punctuation? = /[[:punct:]]$/.match?(word)
  end
end