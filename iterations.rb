## create a loop
# loop do
#   print 'Do you want to continue? (y/n) '
#   answer = gets.chomp.downcase
#   if answer == 'n'
#     break
#   end
# end

# # loop conditional
# random_number = Random.new.rand(5)
# loop do
#   print 'Guess the number between 0 and 5 (e to exit): '
#   answer = gets.chomp
#   if answer == 'e'
#     puts "The number was #{random_number}."
#     break
#   elsif answer.to_i == random_number
#     puts 'You guessed correctly!'
#     break
#   else
#     puts 'Try again.'
#   end
# end

# # loop conditional with number
# loop do
#   print 'Enter a number greater than 10 to exit: '
#   answer = gets.chomp.to_i
#   break if answer > 10
# end

# Program to loop through asking for someone's name and make sure formatting is correct
def get_name
  name = ''
  loop do
    print 'Enter your name (min. 2 characters, no numbers): '
    name = gets.chomp
    # check for name to be at least two characters and does not contain any numbers (digits)
    if name.length >= 2 && !name.index(/\d/)
      break
    #if criteria is not met, then print out below
    else
      puts 'Name must be longer than 2 characters and not contain numbers.'
    end
  end
  return name
end

name = get_name()
puts "Hi #{name}."
