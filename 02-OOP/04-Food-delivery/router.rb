require_relative 'controller'

class Router
  def initialize
    @controller = Controller.new
    @running = true

    run
  end

  def run
    puts "Welcome to the Kebab!"
    puts "           --           "
    puts "Please enter your username:"
    username = gets.chomp
    puts "Please enter your password:"
    password = gets.chomp


    while @running
      display_tasks_manager
      action = gets.chomp.to_i
      print `clear`
      case action
      when 1 then @controller.list_customers
      when 2 then @controller.add_customer
      when 3 then @controller.view_orders
      when 4 then @controller.add_order
      when 5 then @controller.remove_order
      when 6 then @controller.list_employees
      when 7 then stop
      else puts "Please press 1, 2, 3, 4, 5, 6 or 7"
      end
    end
  end

  def stop
    @running = false
  end

  private

  def display_tasks_manager
    puts ""
    puts "What would you like to do?"
    puts "Options"
    puts "1 - List customers"
    puts "2 - Add customer"
    puts "3 - View orders"
    puts "4 - Add order"
    puts "5 - Remove order"
    puts "6 - List employees"
    puts "7 - Log out"
  end

  # def display_tasks_delivery_guy
  #   puts ""
  #   puts "What would you like to do?"
  #   puts "Options"
  #   puts "1 - View orders"
  #   puts "2 - Complete order"
  #   puts "3 - Log out"
  # end

end

Router.new