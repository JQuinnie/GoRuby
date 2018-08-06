# create a loop
# loop do
#   print 'Do you want to continue? (y/n) '
#   answer = gets.chomp.downcase
#   if answer == 'n'
#     break
#   end
# end

# loop conditional
random_number = Random.new.rand(5)
loop do
  print 'Guess the number between 0 and 5 (e to exit): '
  answer = gets.chomp
  if answer == 'e'
    puts "The number was #{random_number}."
    break
  elsif answer.to_i == random_number
    puts 'You guessed correctly!'
    break
  else
    puts 'Try again.'
  end
end

loop do
  print 'Enter a number greater than 10 to exit: '
  answer = gets.chomp.to_i
  break if answer > 10
end
