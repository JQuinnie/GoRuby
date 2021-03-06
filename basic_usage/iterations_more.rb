# iterate over an array

array = [0, 1, 2, 3, 4, 5]

# # with old while loop
# i = 0
# while i < array.length
#   item = array[i]
#   puts "The current item is #{item}."
#   i += 1
# end

array.each do |item|
  puts "The current array item is: #{item}"
end

array.each do |item|
  item += 2
  puts "The current item + 2 is #{item}."
end

# hash iteration, the each method is also each_pair
business = { 'name' => 'Treehouse', 'location' => 'Portland, OR' }

business.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

business.each_key do |key|
  puts "Key: #{key}"
end

business.each_value do |value|
  puts "Value: #{value}"
end

# Times iterator works with integers
5.times do
  puts 'Hello!'
end

5.times do |item|
  puts "Hello! #{item + 1}"
end

# for loop is similar to each method, uses a range
for item in 1..10 do
  puts "The current item is #{item}."
end

# program = ['JavaScript', 'Python', 'Ruby'] is same as below
program = %w(JavaScript Python Ruby)
for language in program
  puts "I love to program in #{language}."
end
