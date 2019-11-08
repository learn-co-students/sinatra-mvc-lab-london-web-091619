class PigLatinizer
  def piglatinize(phrase)
    phrase.split.map do |word|
      if word.start_with?(/[aeiou]/i)
        word + "way"
      else
        pig_suffix = word.slice!(/^[^aeiou]+/) + "ay"
        word + pig_suffix
      end
    end.join(" ")
  end
end
