require 'csv'
require 'nokogiri'
require 'open-uri'
require_relative "recipe"


class Cookbook
  attr_reader  :recipes

  def initialize(csv_file)
    @file = csv_file
    @recipes = []
    load_csv(@file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    #codebyPerri
  end

  def load_csv(file)
    CSV.foreach(@file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end


  def save_csv
    CSV.open(@file, 'w',  col_sep: ',') do |csv|
      @recipes.each do |recipe| # un csv attend toujours une injection de tableau
        csv << [recipe.name, recipe.description]
      end
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_csv
  end

  def remove_recipe(recipe_id)
    @recipes.delete_at(recipe_id.to_i-1)
    save_csv
  end

  def add_recipe_from_marmiton(url)
    @doc = Nokogiri::HTML(open(url))

    @doc.search('.m_search_result').each do |element|
        name = element.search('.m_search_titre_recette > a').inner_text.strip
        description = element.search('.m_search_result_part4').inner_text.strip
        @recipes << Recipe.new(name, description)
    end
    save_csv
  end


end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.


