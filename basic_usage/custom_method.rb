# Defining a custom Method on the String class to return the number of vowels
class String
  def number_of_vowels
    gsub(/[^aeiou]/, '').size
  end
end

print 'hello'.number_of_vowels

str = 'happy birthday my friend'
print str.number_of_vowels
