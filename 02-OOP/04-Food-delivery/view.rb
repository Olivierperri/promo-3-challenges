require 'time'
require_relative 'restaurant'


class View

  def ask_list_customers(customers)
    customers.each_with_index do |customer, index|
      puts "#{index} - #{customer.name}"
    end
  end

  def ask_to_add_a_customer
    puts "Add a customer name, please"
    name = gets.chomp
    puts "Add a customer adress, please"
    adress = gets.chomp

    customer = [name, adress]
  end

  def ask_view_orders
    puts "Please, enter a customer ID"
    customer_id = gets.chomp
  end

  def ask_to_add_an_order
    puts "Please, enter a menu"
    menu = gets.chomp
    puts "Please, enter a customer_id"
    customer_id = gets.chomp
    puts "Please, enter an employee_id"
    employee_id = gets.chomp

    order = [menu, customer_id, employee_id]

  end

  def ask_to_remove_an_order
    puts "Remove order, please"
    anwser = gets.chomp
  end

  def ask_list_employees(employees)
    employees.each_with_index do |employee, index|
      puts "#{index} - #{employee.name}"
    end
  end

  # def complete_an_order
  # puts "Which order do you want to complete, please? "
  #   anwser = gets.chomp
  # end

end

