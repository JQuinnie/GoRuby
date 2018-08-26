# create new module
module Fetcher
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

class Cat
  include Fetcher
  def initialize(name)
    @name = name
  end
end

dog = Dog.new('Fido')
dog.fetch('ball')

cat = Cat.new('Garfield')
cat.fetch('laser pointer')
