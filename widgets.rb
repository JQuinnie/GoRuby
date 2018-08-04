# Display welcome message
puts "Welcome to the Widget Store!"

# Ask for quantity
# puts will skip down to next line, so use print to retrieve input
# Ruby does not need a return value, the last expression is the return value of the method
def ask(question)
  print question
  gets.chomp
end

# Create a method that will return the total price of widgets
def price(quantity)
  quantity*10
end

answer = ask("How many widgets are you ordering? ")
number = answer.to_i
# Calculate total
total = price(number)
puts "For #{number} widgets, your total is: $#{total}"

# Discount for large orders
