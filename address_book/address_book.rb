require './contact'

class AddressBook
  # when used, does not have to use @ sign to refer to each contact
  attr_reader :contacts

  # initializing an instance variable
  def initialize
    @contacts = []
  end

  def print_contact_list
    puts 'Contact List'
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new

contact_one = Contact.new
contact_one.first_name = 'Jenn'
contact_one.middle_name = 'N'
contact_one.last_name = 'Chu'
contact_one.add_phone_number('Mobile', '678-999-8212')
contact_one.add_address('Home', '123 Main St.', '', 'Denver', 'CO', 80222)

address_book.contacts.push(contact_one)
address_book.print_contact_list
