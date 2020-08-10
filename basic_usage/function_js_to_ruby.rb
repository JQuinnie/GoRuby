# JavaScript
# Function as Argument
# Defining a function that requires an argument
# to be a function that takes 3 arguments.
# const outerFunction = (innerFunction) => (innerFunction(10, 8 , 3) * 15);
#
# First function that takes 3 arguments.
# const innerFunctionA = (a, b, c) => (a * a + 2 * b + c);
#
# Second function that takes 3 arguments.
# const innerFunctionB = (a, b, c) => (a * b + c);
#
# Calling the outer function with the first function that takes 3 arguments
# const outerResultA = outerFunction(innerFunctionA); // (10 * 10 + 2 * 8 + 3) * 15 => 1785
#
# Calling the outer function with the second function that takes 3 arguments
# const outerResultB = outerFunction(innerFunctionB); // (10 * 8 + 3) * 15 => 1245
#
# console.log(outerResultA); // => 1785
# console.log(outerResultB); // => 1245
#
# Function as Return Value
# const add = (integer) => (anotherInteger) => integer + anotherInteger;
# const result = add(5)(8); // 5 + 8 = 13
# console.log(result); // => 13


# Ruby
# Function as Argument
def outer_function(inner_function)
  inner_function.call(10, 8, 3) * 15
end

def inner_function_a(a, b, c)
  a * a + 2 * b + c
end

def inner_function_b(a, b, c)
  a * b + c
end

outer_result_a = outer_function(method(:inner_function_a))
outer_result_b = outer_function(method(:inner_function_b))

puts outer_result_a # => 1785
puts outer_result_b # => 1245

# Function as Blocks
def outer_function_block
  yield(10, 8, 3) * 15
end

outer_result_a = outer_function_block { |a, b, c| a * a + 2 * b + c }
outer_result_b = outer_function_block { |a, b, c| a * b + c }

puts outer_result_a # => 1785
puts outer_result_b # => 1245

# Function as Return Value
def add(integer)
  -> (anotherInteger) { integer + anotherInteger } # -> this to return a lambda
end

result = add(5).(8) # same as add(5).call(8)

puts result # 13

# https://www.techcareerbooster.com/blog/functions-as-arguments-and-return-values-javascript-vs-ruby
