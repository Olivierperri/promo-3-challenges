class Delivery_guy  < Employee

attr_accessor :delivery_orders

  def initialize(name, password, restaurant)
  end

  def view_orders(employee_id)
    @restaurant.orders.find_all do |order|
      order.employee_id == employee_id
    end
  end

  def mark_has_done(order_id, employee_id)
    @restaurant.orders.delete_if do |order|
    (order.id_number == order_id) && (order.employee_id == employee_id)
    end
  end


end

