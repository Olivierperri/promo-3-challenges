class Restaurant
  attr_reader :name, :adress, :phone
  attr_accessor :customers, :id_number, :orders, :employees

  def initialize(name, adress, phone)
    @name     = name
    @adress   = adress
    @phone    = phone

    @employees = []
    @customers = []

    @orders = []

    @id_count = 0
  end

  def next_order_id
    @id_count += 1
  end

  def numbers_employees
    @employees.size
  end

  def number_customer
    @customers.size
  end

end
