# A simple program that simulates keeping inventory at a small retail store.
# Module to track inventory and hold inventory methods
module Inventoryable

  # initialize and set stock_count to 0 if it doesn't exist, if it does, return variable
  def stock_count
    @stock_count ||= 0
  end
  # set stock count
  def stock_count=(number)
    @stock_count = number
  end
  # see if item is in stock
  def in_stock?
    stock_count > 0
  end
end

class Shirt
  include Inventoryable
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

class Pant
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

class Accessory
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

shirt1 = Shirt.new(name: "MTF", size: "L")
shirt2 = Shirt.new(name: "MTF", size: "M")

shirt1.stock_count = 10

puts "Shirt 1 stock count: %s" % shirt1.stock_count
puts "Shirt 2 stock count: %s" % shirt2.stock_count

puts "Shirt 1 in stock?: %s" % shirt1.in_stock?
puts "Shirt 2 in stock?: %s" % shirt2.in_stock?
