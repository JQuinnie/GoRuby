# Defining a custom Method on the String class to return the number of vowels
class String
  def number_of_vowels
    gsub(/[^aeiou]/, '').size
  end
end

puts 'hello'.number_of_vowels

# custom method on a class
class User
  def can_vote?
    @age >= 18 # usage of instance variable
  end
end

require('date')

class User
  # special method that runs by default when you create a new instance of this class
  def initialize(date_of_birth)
    days_since_birth = Date.today - Date.parse(date_of_birth) # scoped to method, cant be accessed outside
    @age = days_since_birth / 365 # stores user age in instance variable, setup local state for object
  end
end

# create an object of the class
john = User.new('2000-01-01')
puts john.can_vote?

# class methods
class User
  def self.new_voter
    date_of_birth = Date.today - (18 * 365)
    new(date_of_birth.to_s) # equivalent to calling User.new
  end
end

voter = User.new_voter
puts voter.can_vote?

