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
