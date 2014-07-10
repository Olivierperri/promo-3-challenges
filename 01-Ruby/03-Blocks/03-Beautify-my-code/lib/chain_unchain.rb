def shuffle_word(a_word)
  #TODO: refactor this method
  a_word.upcase.chars.shuffle
end


def quote_prime_numbers(n)
  #TODO: refactor this method
  prime_numbers  = (1..n).find_all do |i|
  selection =  (2..i-1).select {|k| i % k == 0 }.count == 0
  #k correspondent à tous les nombres entre 2 et i-1 pour vérifier qu'il n'est pas divisible.
end
prime_numbers.map{ |prime_num| "#{prime_num} is prime"}
end


#(1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}


#Prime.first(10)
#Prime.each(n) = |prime|
#"#{prime} is prime."