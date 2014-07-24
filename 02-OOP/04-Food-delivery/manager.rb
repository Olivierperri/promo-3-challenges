require_relative 'restaurant'
require_relative 'customer'
require_relative 'employee'
require_relative 'delivery_guy'
require_relative 'order'

class Manager < Employee

  def list_customers
    @restaurant.customers
  end

  def add_customer(customer)
    @restaurant.customers << customer
  end

  def add_order(order)
    @restaurant.orders << order
    end

  def view_orders(customer_id)
    @restaurant.orders.find_all do |order|
    p '#{order.menu} -' if order.customer_id == customer_id
    end
  end

  def remove_order(delete_id)
    @restaurant.orders.delete_if do |order|
    order.id_number == delete_id
    end
  end


  def list_employees
    @restaurant.employees
  end
end

