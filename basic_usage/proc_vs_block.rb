prices = [10, 100, 40, 75, 30]

# block example
prices.select do |price|
  price < 50
end

# or
prices.select { |price| price < 50 }

# proc example
cheap = Proc.new do |price|
  price < 50
end

# or
cheapAlso = Proc.new { |price| price < 50 }

# call Proc
# cheap.call(100)
# or
# cheap[100]

# lambda are special proc objects
cheapLambda = lambda { |price| price < 30 }

# call lambda the same way
# cheapLambda.call(30)

# can also call lambda with symbol, stubby lambdas
cheapLambdaAlso = -> price { price < 30 }

# can pass multiple arguments
cheapest = -> price1, price2 { [price1, price2].min }
cheapest.call(50, 30)

# lambdas need arguments, Procs do not... lambdas will throw argument error
lamb = -> x { "you called me with #{x.inspect}"}

# a method that takes a block, an optional final parameter that holds the block
def modify_prices(prices, &block)
  block.inspect # just inspecting the block
end

# send a message to Proc to any symbol
:even?.to_proc.call(4)

# simplifying by call to proc with the symbol as well as tell Ruby this proc will act like a block being passed to the method
# before
prices.select { |p| p.even? }

# after
prices.select(&:even?)
prices.map(&:to_f)

# in practice,
# use a block when calling methods and expect code you are passing in to be run as part of the method
# use lambdas when you want to store a block of code and use it later, delay execution until later
