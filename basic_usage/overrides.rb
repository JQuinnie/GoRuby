# example of overrides
module Printable
  def print(item)
    "#{item} has been successfully printed"
  end
end

class Terminal
  include Printable
  def print(item)
    "#{item} has been successfully printed to the console"
  end
end

class Printer
  include Printable
  def print(item)
    "#{item} has been successfully printed to the printer"
  end
end

# InkjetPrinter class is a subclass of Printer class
class InkjetPrinter < Printer
  include Printable
  def print(item)
    "#{item} has been successfully printed to the inkjet printer"
  end
end

inkjet = InkjetPrinter.new
p InkjetPrinter.ancestors
p inkjet.print('Page')

# ancestors display method lookup path
# method lookup path: class - InkjetPrinter > superclass - Printer > module - Printable > Object class > kernel (a module) > BasicObject class
# BasicObject class is the parent of all classes in Ruby
