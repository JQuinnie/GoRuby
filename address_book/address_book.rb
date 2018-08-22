require './contact'

class AddressBook
  # when used, does not have to use @ sign to refer to each contact
  attr_reader :contacts

  # initializing an instance variable
  def initialize
    @contacts = []
  end

  # search method for name
  def find_by_name(name)
    results = []
    search = name.downcase
    contacts.each do |contact|
      if contact.full_name.downcase.include?(search)
        results.push(contact)
      end
    end
    puts "Name search results (#{search})"
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
  end

  # search method for phone number
  def find_by_phone_number(number)
    results = []
    # gsub will replace a dash with nothing
    search = number.gsub('-', '')
    contacts.each do |contact|
      # inner loop to loop thru contacts phone numbers
      contact.phone_numbers.each do |phone_number|
        if phone_number.number.gsub('-', '').include?(search)
          results.push(contact)
        end
      end
    end
    puts "Phone search results (#{search})"
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
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
# address_book.print_contact_list

address_book.find_by_name('n')
address_book.find_by_phone_number('999')
