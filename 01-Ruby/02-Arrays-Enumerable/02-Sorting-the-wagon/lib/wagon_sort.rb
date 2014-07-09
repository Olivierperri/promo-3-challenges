def wagon_sort(students)
  students.sort_by{|word| word.downcase}
end

def wagon_display(students, count)

  part1 =  students[0..count-2].join(", ")
  part2 =  students.last
  sentence = "#{part1} and #{part2}"
  return sentence

end
