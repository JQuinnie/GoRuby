require './contact'
require 'yaml'

class AddressBook
  # when used, does not have to use @ sign to refer to each contact
  attr_reader :contacts

  # initializing an instance variable
  def initialize
    @contacts = []
    # anything that we have saved in file will open into contacts after initialization
    open
  end

  # methods for open and save to file to persist data
  def open
    # From Ruby standard library, YAML saves Ruby objects into a text based format
    if File.exist?('contacts.yml')
      # if file exists than load into contacts what the YAML file has, replace it
      @contacts = YAML.load_file('contacts.yml')
    end
  end

  def save
    # File.open method, with file name and mode as arguments
    File.open('contacts.yml', 'w') do |file|
      file.write(contacts.to_yaml)
    end
  end

  # method to display menu
  def run
    loop do
      puts '-' * 30
      puts 'Address Book'
      puts 'a: Add Contact'
      puts 'p: Print Address Book'
      puts 's: Search'
      puts 'e: Exit'
      print 'Enter your choice: '
      input = gets.chomp.downcase
      case input
      when 'a'
        add_contact
      when 'p'
        print_contact_list
      when 's'
        print 'Search term: '
        search = gets.chomp
        find_by_name(search)
        find_by_phone_number(search)
        find_by_address(search)
      when 'e'
        save
        break
      end
      puts "\n"
    end
  end

  # method to add contacts to address book
  def add_contact
    contact = Contact.new
    print 'First name: '
    contact.first_name = gets.chomp
    print 'Middle name: '
    contact.middle_name = gets.chomp
    print 'Last name: '
    contact.last_name = gets.chomp

    # add phone number or address for contact
    loop do
      puts 'Add phone number or address?'
      puts 'p: Add phone number'
      puts 'a: Add address'
      puts '(Press any other key to go back)'
      response = gets.chomp.downcase
      case response
      when 'p'
        phone = PhoneNumber.new
        print 'Phone number kind (home, work, etc): '
        phone.kind = gets.chomp
        print 'Number: '
        phone.number = gets.chomp
        contact.phone_numbers.push(phone)
      when 'a'
        address = Address.new
        print 'Address Kind (Home, Work, etc): '
        address.kind = gets.chomp
        print 'Address line 1: '
        address.street_1 = gets.chomp
        print 'Address line 2: '
        address.street_2 = gets.chomp
        print 'City: '
        address.city = gets.chomp
        print 'State: '
        address.state = gets.chomp
        print 'Postal Code: '
        address.postal_code = gets.chomp
        contact.addresses.push(address)
      else
        print "\n"
        break
      end
    end

    contacts.push(contact)
  end

  # refactor print results
  def print_results(search, results)
    puts search
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
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
    print_results("Name search results (#{search})", results)
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
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Phone search results (#{search})", results)
  end

  # search method for address
  def find_by_address(query)
    results = []
    search = query.downcase
    contacts.each do |contact|
      # loop through each address for each contact
      contact.addresses.each do |address|
        if address.to_s('long').downcase.include?(search)
          results.push(contact) unless results.include?(contact)
        end
      end
    end
    print_results("Address search results (#{search})", results)
  end

  def print_contact_list
    puts 'Contact List'
    contacts.each do |contact|
      puts contact.to_s('last_first')
    end
  end
end

address_book = AddressBook.new
address_book.run
