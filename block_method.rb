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
