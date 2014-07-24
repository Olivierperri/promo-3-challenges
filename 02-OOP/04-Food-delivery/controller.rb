require_relative 'view'
require_relative 'restaurant'
require_relative 'customer'
require_relative 'employee'
require_relative 'manager'
require_relative 'delivery_guy'
require_relative 'order'

class Controller

  def initialize
    @view = View.new
    @restaurant = Restaurant.new("kebab", "rue", "118218")

    @manager = Manager.new("joe","chez the family",@restaurant)
    @restaurant.employees << @joe

    @speedy = Delivery_guy.new("speedy","chez joe",@restaurant)
    @restaurant.employees << @speedy

    @momo = Delivery_guy.new("momo","chez joe",@restaurant)
    @restaurant.employees << @momo

    @bob = Customer.new('bob', '12 rue des', )
  end

  def list_customers
    list = @manager.list_customers
    @view.ask_list_customers(list)
  end

  def add_customer
    customer = @view.ask_to_add_a_customer
    Customer.new(customer[0], customer[1])
    @manager.add_customer(customer)
  end

  def view_orders
    customer_id = @view.ask_view_orders
    @manager.view_orders(customer_id)
  end

  def add_order
    order = @view.ask_to_add_an_order
    Order.new(order[0], @restaurant.next_order_id, order[1], order[2])
    @manager.add_order(order)
  end

  def remove_order
    delete_id = @view.ask_to_remove_an_order
    @manager.remove_order(delete_id)
  end

  def list_employees
    list = @manager.list_employees
    @view.ask_list_employees(list)
  end

 end