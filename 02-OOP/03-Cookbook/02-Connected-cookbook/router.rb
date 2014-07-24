require_relative 'controller'

class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "
    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      case action
      when 1 then @controller.list
      when 2 then @controller.create
      when 3 then @controller.destroy
      when 4 then stop
      when 5 then @controller.marmiton
      else puts "Please press 1, 2, 3, 4 or 5"
      end
    end
  end

  def stop
    @running = false
  end

  private

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - Stop and exit the program"
    puts "5 - Parse with marmiton"
  end
end