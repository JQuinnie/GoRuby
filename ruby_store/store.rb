# A simple program that simulates keeping inventory at a small retail store.
# Module to track inventory and hold inventory methods
module Inventoryable
  # tell the class to extend itself with the class methods that are inside the module
  def self.included(klass)
    klass.extend(ClassMethods)
    klass.extend(Enumerable)
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
    # from the enumerable mixin
    def each(&block)
      instances.each(&block)
    end

    def report(title, items)
      puts '-' * 50
      puts title
      puts '-' * 50
      items.each do |item|
        line = []
        line.push("Item: #{item.attributes[:name]}")
        line.push("Stock: #{item.stock_count}")
        # some items don't have a size
        if item.attributes.include?(:size)
          line.push("Size: #{item.attributes[:size]}")
        end
        puts line.join("\t")
      end
      puts '-' * 50
      puts "\n"
    end

    # method for items in stock
    def in_stock_report
      title = "#{self.to_s} In Stock Report"
      reportable = instances.select{ |instance| instance.in_stock? }
      report(title, reportable)
    end

    # method for items out of stock
    def out_of_stock_report
      title = "#{self.to_s} In Stock Report"
      reportable = instances.select{ |instance| !instance.in_stock? }
      report(title, reportable)
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

Shirt.in_stock_report
Pant.in_stock_report
Accessory.in_stock_report

Shirt.out_of_stock_report
