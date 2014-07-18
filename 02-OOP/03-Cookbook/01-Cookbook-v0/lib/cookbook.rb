require 'csv'

class Cookbook
  attr_reader :file, :recipes

  def initialize(file)
    @file = file
    @recipes = []
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  end

  def list_all_recipes
    @recipes = []
    CSV.foreach(@file) do |row|
      @recipes << row[0]
    end
    return @recipes
  end

  def add_a_recipe(recipe)
    @recipes << recipe
    CSV.open(@file, 'w' ) do |csv|
    @recipes.each do |recipe|
    csv << [recipe]
    end
    end
  end


  def delete_a_recipe(recipe)
    @recipes.delete(recipe)
      CSV.open(@file, 'w' ) do |csv|
        @recipes.each do |recipe|
        csv << [recipe]
        end
      end
  end


  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end


cook1 = Cookbook.new("recipes.csv")
cook1.add_a_recipe("Paella")
cook1.add_a_recipe("Tarte")
cook1.add_a_recipe("Pizza")

cook1.list_all_recipes
cook1.add_a_recipe("tarte aux pommes")
cook1.delete_a_recipe("Tarte")
cook1.delete_a_recipe("Pizza")
cook1.list_all_recipes
cook1.add_a_recipe("tarte aux framboises")

puts cook1.list_all_recipes


