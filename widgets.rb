# Display welcome message
puts "Welcome to the Widget Store!"

# Ask for quantity
# puts will skip down to next line, so use print to retrieve input
# Ruby does not need a return value, the last expression is the return value of the method
def ask(question)
  print question
  gets
end

answer = ask("How many widgets are you ordering? ")
puts "You entered #{answer.chomp} widgets"

# Calculate total


# Discount for large orders
