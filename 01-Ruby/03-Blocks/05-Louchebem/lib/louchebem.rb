# Encoding: utf-8

def louchebemize_word(word)
  suffixe = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = %w(a e i o u y A E I O U Y)
  #special_characters = [""]

  if word.length == 1
    word
  elsif vowels.include?(word[0])
    "l" + word + "#{suffixe.sample}"
  else
    louchebemized_word = ""
    prefix = ""
    suffix = ""
    word.chars.each_with_index do |char, index|
      if vowels.include?(char) then
        break
      else
        prefix = word[index+1..-1]
        suffix = suffix + word[index]
        louchebemized_word = prefix + suffix
      end
    end
    return louchebemized_word = "l" + louchebemized_word + "#{suffixe.sample}"
  end
end

#louchebemize('je ne veux plus aller a l ecole')

  #la consonne ou le groupe de consonnes au début du mot est reportée à la fin du mot et remplacée par un « l »
  #you should pick your final random suffix in `["em", "é", "ji", "oc", "ic", "uche", "ès"]`
  #one-letter word like "a" or "l" should not be translated
  #word beginning with a vowel should be translated differently. Ex: "atout" may give "latoutoc"
  #ideally your program should be able to translate any complicated sentence, eventually embedding
  #TODO: implement your louchebem translator

