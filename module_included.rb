# create new module
module Fetcher
  # included class method
  def self.included(klass)
    puts "#{klass} has been included"
  end

  def fetch(item)
    puts "I'll go fetch that #{item} right now!"
  end
end

class Dog
  include Fetcher
  def initialize(name)
    @name = name
  end
end

dog = Dog.new("Fido")
dog.fetch("ball")
dog.fetch("toy")
