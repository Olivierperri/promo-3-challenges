require 'time'
require_relative 'restaurant'

class Order

  def initialize(menu, id_number, customer_id, employee_id)
    @id_number = id_number
    @time    = Time.now
    @menu    = menu
    @customer_id = customer_id
    @employee_id = employee_id
  end
end

@menu = {
  "HTML en crème" => 10,
  "CSS en cascade" => 20,
  "Ruby en salade" =>  5,
  "Rails en sauce" => 25,
}