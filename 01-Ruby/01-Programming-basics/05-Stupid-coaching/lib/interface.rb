require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.

puts "Hello Coach ?"
answer = gets.chomp

puts coach_answer(answer)