# Class example
class Student
  @first_name
  @last_name
  @email
  @username
  @password

  # the setter method
  def first_name=(name)
    @first_name = name
  end

  # the getter method
  def first_name
    @first_name
  end

  # default Class method to_s
  # when you try to print something out, but you can customize it
  def to_s
    "First name: #{@first_name}"
  end
end

jquinn = Student.new # creating the new Student object
jquinn.first_name = 'JQ' # calling the setter method and seting it
puts jquinn.first_name # calling the getter method and printing it

class StudentNoRedundancy
  # accessor method gives both setters and getters
  attr_accessor :first_name, :last_name, :email, :username, :password
  # attr_reader :username # only allows getter

  # instance variables
  @first_name
  @last_name
  @email
  @username
  @password

  # initialize method, will set all the values
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
    "First name: #{@first_name},
Last name: #{@last_name},
Username: #{@username},
email address: #{@email}"
  end
end

jquinnie = StudentNoRedundancy.new('J', 'Quinn', 'JQuinnie', 'jquinnie@email.com', 'password1')
jane = StudentNoRedundancy.new('Jane', 'Doe', 'JDoe', 'jdoe@email.com', 'password2')

puts jquinnie
puts jane
jane.last_name = jquinnie.last_name
puts 'Jane got married'
puts jane
