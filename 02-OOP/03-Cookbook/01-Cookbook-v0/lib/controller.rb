require_relative 'cookbook'

class Controller
  @repository = cookbook.new
  @display =  Ui.new
  end

  #Here you should instantiate the Cookbook model with the file
#   end

#   # TODO: Implement the methods to retrieve, add, and delete recipes through the model
# end
