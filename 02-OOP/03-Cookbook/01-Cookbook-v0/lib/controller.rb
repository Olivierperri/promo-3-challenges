require "csv"
require_relative 'cookbook'
require_relative 'ui'
require_relative 'recipe'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @ui = UI.new
  end

  def list
    recipe = @cookbook.list_all_recipes
    @ui.display_list(recipe)
  end

  def create
    choice = @ui.ask_to_add_a_recipe
    @cookbook.add_recipe(choice)
  end

  def destroy
    index = @ui.ask_to_remove_a_recipe
    @cookbook.remove_recipe(index)
  end

 end

  #Here you should instantiate the Cookbook model with the file
#   end

#   # TODO: Implement the methods to retrieve, add, and delete recipes through the model
# end
