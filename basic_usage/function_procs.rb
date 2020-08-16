# A function is a relation between a set of input values and a set of output values
# functional programming allows you to treat functions as first class citizens, take a function as an input (HOF)

# Functional programming concepts
# 1. functions are definitions, not list of instructions
# -  how to get from some input value to an output value
# 2. functions are immutable definitions, not variables
# - dont assign values, define things, don't have variables that can change as a program runs
# 3. functions are first class citizens
# - can use them anywhere variables are used, including passing into another function

# how to pass one function into another
# a simple map function for applying discounts
prices = [100, 75, 90, 80, 50]

def apply_discount (prices)
  discounted_prices = []
  prices.each do |price|
    reduced_price = price - (price * 0.15)
    discounted_prices << reduced_price
  end
  discounted_prices
end

print apply_discount(prices)

# apply a discount to a sale price via Proc
discount = Proc.new do |price|
  price - (price * 0.15)
end

print discount.call(100) # call the Proc to run it

# using Procs for the map function
def map(list, fn)
  results = []
  list.each do |item|
    results << fn.call(item) # call the Proc function with arg of item
  end
  results
end

print map(prices, discount)

# advantage is that you can do the same for another Proc
tax = Proc.new do |price|
  price + (price * 0.2)
end

print map(prices, tax)

# native Ruby map function
print prices.map(&tax) # prefix Proc with &
