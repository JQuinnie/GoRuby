# Modules are a grouping of logically related objects under a single name that can be shared across classes
# Modules are similar to classes but they cannot be instantiated and do not contain a new method
# Every class in Ruby is also a module and it inherits all the methods of the included module

# see similar unit conversion in lambdas.rb
module MeterConversion
  VERSION = 1.0

  def self.to_inches(meters)
    meters * 39.37
  end

  def self.to_feet(meters)
    meters * 3.28
  end

  def self.to_yards(meters)
    meters * 1.09
  end
end

puts MeterConversion::VERSION
puts MeterConversion.to_inches(5)
puts MeterConversion.to_feet(5)
puts MeterConversion.to_yards(5)

# simple example of include
module Printable
  def print(item)
    "#{item} has been successufully printed."
  end
end

class Terminal
  include Printable
end

terminal = Terminal.new
p terminal.print('screen')

# another example of include
module Printable
  def self.include(klass) # attr on the class
    attr_accessor :print_count
  end

  def print(item) # tied to each variable instance
    @print_count ||= 0 # conditional assign operator, if not accessed before, its 0 if it has, then add 1
    @print_count += 1
    "#{item} has been successfully printed. Print Count: #{@print_count}"
  end
end

class Terminal
  include Printable
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

terminal1 = Terminal.new('Term1')
p terminal1.print('Page')
p terminal1.print('Picture')

terminal2 = Terminal.new('Term2')
p terminal2.print('Page')
p terminal2.print('Picture')
