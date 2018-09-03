# block method
def block_method
  puts 'This is the first line in block_method'
  yield
  puts 'This statement is after the yield keyword'
end

# executes when yield appears
block_method do
  puts 'This statement is called from the block'
end

# block arguments
def get_name
  print 'Enter your name: '
  name = gets.chomp
  yield name # pass in name variable to block
end

get_name do |name| # name variable passed in
  puts "That's a cool name, #{name}!"
end
