
class UI

  def display_list(recipes)
    recipes.each_with_index do |recipe, index|
      puts "#{index+1} : #{recipe.name}"
      puts "#{recipe.description}"
    end
  end

  def ask_to_add_a_recipe
    puts "Add a recipe, please"
    name = gets.chomp
    puts "Add a description, please"
    description = gets.chomp

    Recipe.new(name, description)

  end

  def ask_to_remove_a_recipe
    puts "Remove a recipe, please"
    answer = gets.chomp
    return answer
  end

  def search_on_marmiton
    puts "What do you want to search on marmiton ? "
    answer = gets.chomp
    return answer
  end

end


