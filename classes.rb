# creation of a class, it is composed of methods and variables.
# Take a 'Name' class to take a variable and share it
class Name
  def initialize(title, first_name, middle_name, last_name)
    # @ denotes an instance variable
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # create method
  def full_name
    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + ' ' + full_name()
  end

  # allows attr_reader and attr_writer
  attr_accessor :title, :first_name, :middle_name, :last_name
end

name = Name.new('Ms.', 'Jenn', 'N', 'Chu')
puts name.full_name_with_title
name = Name.new('Mr.', 'Johnny', 'H', 'Chu')
puts name.full_name_with_title

puts "Previous title: #{name.title}"
name.title = 'Dr.'
puts "New title: #{name.title}"
