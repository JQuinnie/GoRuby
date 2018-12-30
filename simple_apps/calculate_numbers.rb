# Write for me three methods - calculate, add and subtract.

# HINT
# Write add and subtract first, then have calculate call one or the other depending on the options passed. Gotchas: The inject based approach for addition will require some modification for subtraction. For "calculate", you can't use both splatted arguments and last-parameter-is-a-hash at the same time through Ruby, so you'll have to work on the arguments inside of calculate. There's no neat way to do this - you have to check if the last argument to calculate is a Hash, then remove it from the list before calling add or subtract.

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
