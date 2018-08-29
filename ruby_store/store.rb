# A simple program that simulates keeping inventory at a small retail store.
# Module to track inventory and hold inventory methods
module Inventoryable
end

class Shirt
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
