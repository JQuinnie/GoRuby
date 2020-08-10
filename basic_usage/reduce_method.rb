# custom reducer function using Method instance
def sum_reducer(initial_value, current) initial_value + current end

def reduce(reducer, initial_value, array)
  value = initial_value
  array.each do |num|
    current_value = num
    value = reducer.call(value, current_value)
  end
  value
end

puts "sum is: #{reduce(method(:sum_reducer), 0, [1, 3, 5])}"

# custom reducer function using blocks
def reduce_block(initial_value, array)
  value = initial_value
  array.each do |num|
    current_value = num
    value = yield(value, current_value)
  end
  value
end

puts "sum in block is: #{reduce_block(0, [2, 4, 6]) {|initial_value, current| initial_value + current }}"

