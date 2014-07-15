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
  if string_to_h(a_string) == string_to_h(another_string)
    true
  else
    false
  end
end

def string_to_h(a_string)
  hash = {}
  string_tab = a_string.downcase.scan(/\w/)

  string_tab.each  do |x|
  hash[x.to_sym] = string_tab.count(x)
  end
return hash
end

