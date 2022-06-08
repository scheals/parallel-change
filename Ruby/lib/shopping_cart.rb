# frozen_string_literal: true

# This class handles ShoppingCart.
class ShoppingCart
  def initialize
    #
    # the goal is to remove this field, replacing with
    # @prices = []
    #

    @prices = []
  end

  def add(price)
    @prices << price
  end

  def number_of_products
    @prices.size
  end

  def calculate_total_price
    @prices.sum
  end

  def discount?
    @prices.any? { |price| price >= 100 }
  end
end

# This class SomeConsumer.
class SomeConsumer
  def do_stuff
    shopping_cart = ShoppingCart.new
    shopping_cart.add(100)
    puts "other consumer: #{shopping_cart.calculate_total_price}"
  end
end

if __FILE__ == $PROGRAM_NAME
  shopping_cart = ShoppingCart.new
  shopping_cart.add(10)
  puts "number of products: #{shopping_cart.number_of_products}"
  puts "total price: #{shopping_cart.calculate_total_price}"
  puts "has discount: #{shopping_cart.discount?}"
end
