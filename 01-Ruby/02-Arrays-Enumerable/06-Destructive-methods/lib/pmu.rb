def pmu_format!(race_array)

  rank = race_array.size

  for horse in 0...rank
  race_array[horse] = "#{horse + 1}-#{race_array[horse]}!"
  end

race_array.reverse!

end


pmu_format! ["Abricot du Laudot", "Black Caviar", "Brigadier Gerard"]
