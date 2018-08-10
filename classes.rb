# creation of a class, it is composed of methods and variables.
# Take a 'Name' class to take a variable and share it
class Name
  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  # def title
    # @title
  # end
  attr_reader :first_name, :middle_name, :last_name
  # allows attr_reader and attr_writer
  attr_accessor :title
end

name = Name.new('Ms.', 'Jenn', 'N', 'Chu')
puts name.title + ' ' +
     name.first_name + ' ' +
     name.middle_name + ' ' +
     name.last_name

puts "Previous title: #{name.title}"
name.title = 'Dr.'
puts "New title: #{name.title}"
