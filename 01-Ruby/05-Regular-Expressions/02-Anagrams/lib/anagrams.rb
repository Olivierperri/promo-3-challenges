def anagrams?(a_string, another_string)
  string1 = a_string.gsub(//)
  string2 = another_string.gsub(//)

  if string1.sort == string2.sort
    return true
  else
    return false
  end
  #TODO: implement the obvious method to test if two words are anagrams
end

def anagrams_on_steroids?(a_string, another_string)
  #Hash
  #TODO: implement the improved method
end
