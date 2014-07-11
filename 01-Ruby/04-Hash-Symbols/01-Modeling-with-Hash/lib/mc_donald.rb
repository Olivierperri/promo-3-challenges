def poor_calories_counter(burger, side, beverage)
calories = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130,
"Coca" => 160,
"Sprite" => 170,
"French fries" => 130,
"Potatoes" => 130
}

total_calories = calories[burger] + calories[side] + calories[beverage]
return total_calories
end
  #TODO: return number of calories for this mcDonald order


  #TODO: return number of calories for a less constrained order
def calories_counter(*orders)

calories = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130,
"Coca" => 160,
"Sprite" => 170,
"French fries" => 130,
"Potatoes" => 130,
"Happy Meal" => 580,
"Best Of Big Mac" => 590,
"Best Of Royal Cheese" => 430
}

  total_calories = 0
  orders.each  do |ord|
  total_calories += calories[ord]
  end

  return total_calories
end

#menu = {
 # "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca")
  #{}"Best Of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca")
  #{}"Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
#}
