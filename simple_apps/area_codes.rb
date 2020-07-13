dial_book = {
  'denver' => '303',
  'edison' => '908',
  'evanston' => '847',
  'houston' => '713',
  'lancaster' => '717',
  'miami' => '305',
  'newbrunswick' => '732',
  'newyork' => '212',
  'orlando' => '407',
  'paloalto' => '650',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each { |key, value| puts key }
  # somehash.keys  would do the same
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts 'Do you want to look up an area code based on city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y' # exit loop if anything but Y
  puts 'Which city do you want the area code for?'
  get_city_names(dial_book)
  print 'Enter your selection: '
  city = gets.chomp.downcase
  if dial_book.include?(city) # see if dial_book has the city as key
    puts "The area code for #{city} is #{get_area_code(dial_book, city)}."
  else
    puts 'sorry, you entered an invalid city name.'
  end
end
