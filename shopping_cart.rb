require './products.rb'
require 'pry'

class ShoppingCart

  def initialize
    @items = []
    @total_before_tax = []
    @total_after_tax = []

  end

#create new product within the ShoppingCart
  def self.create(name, base_price)

  end

  def list_items
    @items
  end

# add an product to the cart
  def add_to_cart(product)
    @items << product
  end

# remove an product from the cart
  def remove_from_cart(name)
    @items.each do |item|
      if name == item.get_name
        @items.delete(item)
      end
    end
  end

# add up the total cost of all products in the cart before tax
  def total_before_tax
    @items.each do |item|
      @total_before_tax << item.get_base_price
    end
    return @total_before_tax.sum
  end

  # def get_total_before_tax
  #   total_before_tax
  #   @total_before_tax.sum
  # end

# add up the total cost of all products in the cart after tax
  def total_after_tax
    @items.each do |item|
      total = item.calculate_total
      @total_after_tax << total
    end
    return @total_after_tax.sum
  end


end




marlon_cart = ShoppingCart.new

item_one = Product.new("Tennis Shoes", 100)
item_two = Product.new("Leather Suitcase", 450)
item_three = Product.new("Running Shoes", 120)
item_four = Product.new("Desk Chair", 150)
marlon_cart.add_to_cart(item_one)
marlon_cart.add_to_cart(item_two)
marlon_cart.add_to_cart(item_three)
marlon_cart.add_to_cart(item_four)

puts
puts "The total of all items in shopping cart before tax is $#{marlon_cart.total_before_tax}."
puts
puts "The total of all items in shopping cart before tax is $#{marlon_cart.total_after_tax}."

puts "Items before removal"
puts marlon_cart.list_items.inspect
puts "Removing items!"
marlon_cart.remove_from_cart("Desk Chair")
marlon_cart.remove_from_cart("Tennis Shoes")
marlon_cart.remove_from_cart("Running Shoes")
puts "After items removed"
puts marlon_cart.list_items.inspect
