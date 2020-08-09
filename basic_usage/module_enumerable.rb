# work in irb
array = [1, 2, 3, 4, 5, 6]

array.each { |item| puts "Item: #{item}" }
array.each_with_index {|item, index| puts "[#{index}] #{item}"}
array.member?(3)
array.all? { |item| item > 3 }
array.any? { |item| item > 3 }
array.detect {|item| item > 3 }
array.select {|item| item > 3 }
array.find {|item| item > 3 }
# array.find_all is the same but will return all items, not just first
# array.map will map over all items and perform a task and always return an array
array.map { |item| item + 3 }
# also can map over again
array.map { |item| item * 2 }.map{ |item| item.to_s }

puts array.take(2)

hash = {name: "Jason", location: "Treehouse", position: "Teacher"}
puts hash.map{|k,v| "#{k}: #{v}"}.inspect
puts hash.take(2).inspect

# inject method combines all elements of enum by applying a binary operation, specified by a block or symbol
# the element that goes in as an argument to the block is, kept between iterations, and then passed to the next iteration of the block with the same value that it had before
puts array.inject{|sum, item| sum += item}
# same as > sum = 0
#         > array.each { |item| sum += item }
puts array.inject(&:+)
