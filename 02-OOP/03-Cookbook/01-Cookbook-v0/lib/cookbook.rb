require 'csv'
require_relative "recipe"
require_relative "controller"
require_relative "ui"

class Cookbook
  attr_reader  :recipes

  def initialize(csv_file)
    @file = csv_file
    @recipes = []
    load_csv(@file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    #codebyPerri
  end

  def list_all_recipes
    @recipes = []
    CSV.foreach(@file, col_sep: ',') do |row|
      @recipes << [row[0],row[1]]
    end
    return @recipes
  end

  def load_csv(file)
    CSV.foreach(@file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end


  def save_csv
    CSV.open(@file, 'w',  col_sep: ',') do |csv|
      @recipes.each do |recipe| # un csv attend toujours une injection de tableau
        csv << [recipe]
      end
    end
  end

  def add_recipe(recipe)
    @recipes << [recipe.name,recipe.description]
    save_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id)
    save_csv
  end



end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.


