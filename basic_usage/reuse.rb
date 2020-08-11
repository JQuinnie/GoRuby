# Ruby provides two ways of reuse: Inheritance and Modules

# Inheritance via superclass
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class AdminUser < User # User superclass
  def is_admin?
    true
  end
end

user = AdminUser.new('John')
puts "#{user.name} is an admin? #{user.is_admin?}"

# reuse through modules
require 'date'

module Employee
  attr_accessor :start_date

  def employment_length
    days = Date.today - start_date.to_date
    "#{days.to_i} days"
  end
end

class Employed
  include Employee
end

employed = Employed.new
employed.start_date = Date.today - 365
puts employed.employment_length
