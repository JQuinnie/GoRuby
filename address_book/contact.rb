class Contact
  attr_writer :first_name, :middle_name, :last_name

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
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
end

contact_one = Contact.new
contact_one.first_name = 'Jenn'
contact_one.middle_name = 'N'
contact_one.last_name = 'Chu'
contact_two = Contact.new
contact_two.first_name = 'Johnny'
contact_two.last_name = 'Chu'

puts contact_one.full_name
puts contact_two.full_name
