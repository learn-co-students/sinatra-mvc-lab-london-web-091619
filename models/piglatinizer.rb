require "pry"

class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def is_vowel?(letter)
    "aeiou".include?(letter.downcase)
  end

  def piglatinize(phrase)
    pig_phrase = ""

    words = phrase.split(" ")
    words.each do |word|
      if is_vowel?(word[0])
        word += "way"
        pig_phrase += "#{word}"
      else
        pig_word = word
        i = 0
        while i < word.length && !is_vowel?(word[i])
          letter = word[i]
          pig_word += letter
          pig_word.slice!(0)
          i += 1
        end
        pig_word += "ay"
      end
      pig_phrase << "#{pig_word} "
    end

    return pig_phrase.rstrip
  end
end
