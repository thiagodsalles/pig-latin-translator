require_relative 'sentence_translator'
require_relative 'word/regex'
require_relative 'word/translator'
require_relative 'word/splitter'
require_relative 'displayer'

sentences = [
  'Ii',
  '1',
  '2!',
  '',
  ' dadada!',
  'stop',
  'no littering',
  'No shirts, no shoes, no service',
  'No persons under 14 admitted',
  'Hey buddy, get away from my car!'
]

sentences.each do |sentence|
  translated_sentence = SentenceTranslator.new(sentence: sentence).translate
  
  Displayer.display(
    original_sentence: sentence,
    translated_sentence: translated_sentence
  )
end
