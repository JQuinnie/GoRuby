# A simple program that simulates keeping inventory at a small retail store.
# Module to track inventory and hold inventory methods
module Inventoryable
  # tell the class to extend itself with the class methods that are inside the module
  def self.included(klass)
    klass.extend(ClassMethods)
  end

  module ClassMethods
    def create(attributes)
      object = new(attributes)
      instances.push(object)
      object
    end

    def instances
      @instances ||= []
    end
  end

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
  include Inventoryable
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

class Accessory
  include Inventoryable
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

shirt = Shirt.create(name: "MTF", size: "L")
shirt.stock_count = 10
shirt = Shirt.create(name: "MTF2", size: "L")
shirt = Shirt.create(name: "MTF", size: "M")
shirt.stock_count = 9
pant = Pant.create(name: "Jeans", size: "M")
pant.stock_count = 2
pant = Pant.create(name: "Jeans", size: "S")
pant.stock_count = 4
accessory = Accessory.create(name: "Belt", size: "M")
accessory.stock_count = 1
accessory = Accessory.create(name: "Belt", size: "L")
accessory.stock_count = 1
accessory = Accessory.create(name: "Necklace")
accessory.stock_count = 1

puts Shirt.instances.inspect
