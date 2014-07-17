# This file contains methods related to your store and its supplies.
# You should complete it according to the instructions in the TODO comments

def store_items
  {
    yogurts: 2,
    meat: 7,
    vegetables: 5,
    potatoes: 2,
    rice: 1
  }
end

def is_product_in_store?(product)
  store_items.has_key?(product.to_sym.downcase)
  # TODO: Check whether product is present in the store items
end

def price_of_product(product)
  if is_product_in_store?(product)
    store_items[product.to_sym]
  else
    nil
  end
  # TODO: Return the price of the given product, if it's in store. nil otherwise
end

def store_items_to_s
  string = ""
  store_items.each do |key, value|
    string += "- #{key}: #{value} €\n"
  end
  string
end
  # TODO: Return a String with all store items in the following form:
  # - Meat: 7€
  # - Vegetables: 5€
  # ...
  #
  # TIP: add line breaks in your String with "\n"

