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
    if @prices.is_a?(Integer)
      @prices = price
    else
      @prices << price
    end
  end

  def number_of_products
    if @prices.is_a?(Integer)
      1
    else
      @prices.size
    end
  end

  def calculate_total_price
    if @prices.is_a?(Integer)
      @prices
    else
      @prices.sum
    end
  end

  def discount?
    if @prices.is_a?(Integer)
      @prices >= 100
    else
      @prices.any? { |price| price >= 100 }
    end
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
