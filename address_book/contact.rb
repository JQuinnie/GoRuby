# require file for phone numbers
require './phone_number.rb'

class Contact
  attr_writer :first_name, :middle_name, :last_name
  attr_reader :phone_numbers

  def initialize
    @phone_numbers = []
  end

  # method to add a phone number
  def add_phone_number(kind, number)
    phone_number = PhoneNumber.new
    phone_number.kind = kind
    phone_number.number = number
    phone_numbers.push(phone_number)
  end

  attr_reader :first_name

  attr_reader :middle_name

  attr_reader :last_name

  def first_last
    first_name + ' ' + last_name
  end

  def last_first
    last_first = last_name
    last_first += ', '
    last_first += first_name
    unless @middle_name.nil?
      last_first += ' '
      last_first += middle_name.slice(0, 1)
      last_first += '.'
    end
    last_first
  end

  def full_name
    full_name = first_name
    unless @middle_name.nil?
      full_name += ' '
      full_name += middle_name
    end
    full_name += ' '
    full_name += last_name
    full_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when 'last_first'
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end

  def print_phone_numbers
    puts 'Phone Numbers'
    phone_numbers.each { |phone_number| puts phone_number }
  end
end

contact_one = Contact.new
contact_one.first_name = 'Jenn'
contact_one.middle_name = 'N'
contact_one.last_name = 'Chu'
contact_one.add_phone_number('Mobile', '678-999-8212')
puts contact_one.to_s('full_name')
contact_one.print_phone_numbers
