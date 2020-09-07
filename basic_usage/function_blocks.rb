# Blocks are essentially anonymous functions, use and throw away
# Blocks are snippets of code that are grouped together to be executed later

# Blocks are not an object, connected to a method call, not a method argument/parameter
# can only be invoked once, does not persist, separates action away from the method

# how to pass one function into another
# using anon function or block in the native map function
prices = [100, 75, 90, 80, 50]

def apply_tax(prices)
  prices.map do |price| # block here
    price + (price * 0.2)
  end
end

print apply_tax(prices)

# a method that takes a block
# yield stops a method to run the block of code, then resumes running the method
def print_and_yield
  puts 'before calling yield'
  yield
  puts 'after calling yield'
end

print_and_yield do # giving a block to method
  puts 'HERE comes the block'
end

# custom each method using blocks
# passing values to method, simply pass as arguments to yield
def each_in_list(list)
  for i in 0..(list.length - 1)
    yield list[i]
  end
end

each_in_list([1, 2, 3, 4, 5]) do |x|
  puts x * 2
end

# another example using map
def map_words(input)
  results = []
  input.split.each do |word|
    results << yield(word)
  end
  results
end

get_size = map_words('My name is Jenn') do |word|
  word.size
end

print get_size

# use blocks when dealing with lists of data in Ruby!

# Block method with yield keyword
# yield is a way of calling a block
def my_method
  puts 'inside my method'
  yield
end

my_method do
  puts 'blocks as arguments'
end

def greet # block argument
  puts 'Hi, what is your name?'
  yield name
end

greet do |name|
  puts "Hello #{name}"
end

# another way of calling blocks, using the call method
def greet_with_block(question, &my_block)
  puts question
  name = gets.chomp
  my_block.call(name)
end

greet_with_block('What is your name?') do |name|
  puts "Hello, #{name}"
end
