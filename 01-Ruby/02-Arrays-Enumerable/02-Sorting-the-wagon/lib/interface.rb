require_relative 'wagon_sort'

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array
  students << name if name != ""

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

list = wagon_sort(students)
count = students.size

display = wagon_display(list, count)

puts "Congratulations! Your Wagon has #{count} students : "

puts display

