#Class methods are used when a method needs to have functionality but it may not be tied to a specific instance of a class. The extend keyword in Ruby will mix behavior in to a class rather than instances of a class.

# create module that will track each customer, created a tracking module that creats an instances of something, pushes it on to an instances array, and then can find it in said array.
module Tracking
  def create(name)
    object = new(name)
    instances.push(object)
    return object
  end

  def instances
    # return an empty array on first access
    @instances ||= []
  end

  # find a certain customer
  def find(name)
    instances.find do |instance|
      instance.name == name
    end
  end
end

class Customer
  extend Tracking

  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def to_s
    "[#{@name}]"
  end
end

# Those methods now run at the class level and return instances of the class we just created:
puts "Customer.instances: %s" % Customer.instances.inspect
# inputs
puts "Customer.create: %s" % Customer.create("Jo")
puts "Customer.create: %s" % Customer.create("Jenn")
puts "Customer.find('Jenn'): %s" % Customer.find("Jenn")
puts "Customer.find('Dani'): %s" % Customer.find("Dani")
