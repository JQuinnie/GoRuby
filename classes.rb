# # creation of a class, it is composed of methods and variables.
# # Take a 'Name' class to take a variable and share it
# class Name
#   def initialize(title, first_name, middle_name, last_name)
#     # @ denotes an instance variable
#     @title = title
#     @first_name = first_name
#     @middle_name = middle_name
#     @last_name = last_name
#   end

#   # create method
#   def full_name
#     @first_name + " " + @middle_name + " " + @last_name
#   end

#   def full_name_with_title
#     @title + ' ' + full_name()
#   end

#   # allows attr_reader and attr_writer
#   attr_accessor :title, :first_name, :middle_name, :last_name
# end

# name = Name.new('Ms.', 'Jenn', 'N', 'Chu')
# puts name.full_name_with_title
# name = Name.new('Mr.', 'Johnny', 'H', 'Chu')
# puts name.full_name_with_title

# puts "Previous title: #{name.title}"
# name.title = 'Dr.'
# puts "New title: #{name.title}"


## Classes are essentially custom data types in Ruby, telling Ruby what a Book is, a blueprint or template for representation of real world items
class Book
  # define attributes, information that all books have
  attr_accessor :title, :author, :pages
end

# An object is an instance of a book class, which will represent an individual book
book_one = Book.new()
book_one.title = "The Joy Luck Club"
book_one.author = "Amy Tan"
book_one.pages = 350

book_two = Book.new()
book_two.title = "The Good Earth"
book_two.author = "Pearl S. Buck"
book_two.pages = 300

puts book_one.title
puts book_two.title
